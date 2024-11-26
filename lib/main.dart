import 'dart:io';
import 'dart:ui';

import 'package:chewie/chewie.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/data/models/token_model.dart';
import 'package:elrn/features/elrn/domain/entities/address/region_entity.dart';
import 'package:elrn/features/elrn/domain/entities/auth_info/auth_info_entity.dart';
import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';
import 'package:elrn/features/elrn/presentation/pages/courses/modules/topics/course_topic_contents/course_topic_contents_page.dart';
import 'package:elrn/features/elrn/presentation/pages/settings/language_page.dart';
import 'package:elrn/features/elrn/presentation/pages/start/start_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toastification/toastification.dart';

import 'core/constants/app_colors.dart';
import 'core/logs/write_logs_to_storage.dart';
import 'core/theme/theme_data.dart';
import 'di.dart';
import 'features/elrn/domain/entities/program/program_entity.dart';
import 'features/elrn/presentation/bloc/theme/theme_bloc.dart';
import 'features/elrn/presentation/pages/home_page/home_page.dart';
import 'features/elrn/presentation/pages/start/login_oauth2_page.dart';
import 'features/elrn/presentation/pages/start/onboarding_page.dart';
import 'firebase_options.dart';

late SharedPreferences prefs;
ChewieController? chewieController;

const String APP_VERSION = '0.0.1';
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldState> myScaffoldKey = GlobalKey<ScaffoldState>();

late Box box;
final themeBloc = ThemeBloc();

List<ProgramEntity> programsGlobal = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

  await Hive.initFlutter();
  await registerAdapters();
  prefs = await SharedPreferences.getInstance();
  box = await Hive.openBox('elrn');

  //FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  await Future.delayed(const Duration(seconds: 1));
  try {
    const fatalError = true;
    FlutterError.onError = (errorDetails) {
      writeLogsToStorage("${errorDetails.exception.toString()}\n${errorDetails.stack}");
      if (fatalError) {
        // If you want to record a "fatal" exception
        FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
        // ignore: dead_code
      } else {
        // If you want to record a "non-fatal" exception
        FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
      }
    };
    // Async exceptions
    PlatformDispatcher.instance.onError = (error, stack) {
      writeLogsToStorage("${error.toString()}\n${stack.toString()}");
      if (fatalError) {
        // If you want to record a "fatal" exception
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        // ignore: dead_code
      } else {
        // If you want to record a "non-fatal" exception
        FirebaseCrashlytics.instance.recordError(error, stack);
      }
      return true;
    };

  } catch (e) {
    writeLogsToStorage("initilaization error ====================================================================$e");
  }

  await initializeDependencies();
  //if system is in dark mode themeData = darkTheme else lightTheme

  var myTheme = prefs.getString("theme") != "light" ? ToggleDark() : ToggleLight();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: myTheme is ToggleLight ? const Color(0xffFFFFFF) : AppColors.bgDark,
    statusBarIconBrightness: myTheme is ToggleLight ? Brightness.dark : Brightness.light,
    statusBarBrightness: myTheme is ToggleLight ? Brightness.light : Brightness.dark,
    systemNavigationBarColor: myTheme is ToggleLight ? Colors.white : AppColors.bgDark,
    systemNavigationBarIconBrightness: myTheme is ToggleLight ? Brightness.dark : Brightness.light,
  ));

  runApp(EasyLocalization(
    supportedLocales: const [Locale('kk', 'KZ'), Locale('ru', 'RU'), Locale('uz', 'UZ')],
    path: 'assets/translations',
    fallbackLocale: const Locale('uz', 'UZ'),
    startLocale: getStartLocale(),
    child: const MyApp(),
  ));
}

Future<void> registerAdapters() async {
  Hive.registerAdapter(TokenModelBoxAdapter());
  Hive.registerAdapter(ProgramEntityAdapter());
  Hive.registerAdapter(CourseEntityAdapter());
  Hive.registerAdapter(TopicEntityAdapter());
  Hive.registerAdapter(ProfessionEntityAdapter());
  Hive.registerAdapter(VideoLessonEntityAdapter());
  Hive.registerAdapter(MaterialFileEntityAdapter());
  Hive.registerAdapter(VideoFileEntityAdapter());
  Hive.registerAdapter(AuthInfoEntityAdapter());
  Hive.registerAdapter(RegionEntityAdapter());
  Hive.registerAdapter(ProgramDurationAdapter());

  //last hiveTypeId = 10
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static void setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.context.setLocale(newLocale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = prefs.getString("theme", ) != 'light';

  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = {
      // '/': (context) => getStartPage(),
      '/home': (context) => const HomePage(pageIndex: 0),
      '/onboarding': (context) => OnboardingPage(),
      '/loginOauth2': (context) => const LoginOauth2Page(),
      '/start': (context) => const StartPage(),
      '/courseTopicContents': (context) => CourseTopicContentsPage(topicId: '', title: ''),
      '/language': (context) => LanguagePage(),
    };
    return BlocProvider(
      create: (context) => themeBloc,
      child: BlocConsumer<ThemeBloc, ThemeState>(
          bloc: themeBloc,
          listener: (context, state) {
            setState(() {
              isDark = prefs.getString("theme") != 'light';
              print("-------------------------------------RunApp theme: ${prefs.getString("theme")}------------------------------------");
            });
          },
          builder: (context, state) {
            // writeLogsToStorage("RunApp theme: ${prefs.getString("theme")}");
            return ToastificationWrapper(
              child: MaterialApp(
                locale: context.locale,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                darkTheme: darkTheme,
                themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
                title: 'E-learning',
                theme: isDark ? darkTheme : lightTheme,

                debugShowCheckedModeBanner: false,
                navigatorKey: navigatorKey,
                routes: routes,
                home: getStartPage(),
                color: isDark ? AppColors.bgDark : AppColors.blueColor,
              ),
            );
          }),
    );
  }

  Widget getStartPage() {
    try {
      if (prefs.getString('token')?.isEmpty ?? true) {
        return StartPage();
      } else {
        return const HomePage(pageIndex: 0);
      }
    } catch (e) {
      return StartPage();
    }
  }
}

getStartLocale() {
  String? lang = Platform.localeName.split('_')[0];
  switch (lang) {
    case 'ru':
      return const Locale('ru', 'RU');
    case 'qr':
      return const Locale('kk', 'KZ');
    case 'uz':
      return const Locale('uz', 'UZ');
    default:
      return const Locale('uz', 'UZ');
  }
}



