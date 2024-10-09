import 'dart:io';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/data/models/token_model.dart';
import 'package:elrn/features/elrn/presentation/pages/start/start_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/logs/write_logs_to_storage.dart';
import 'core/theme/theme_data.dart';
import 'di.dart';
import 'features/elrn/data/datasources/local/token_db_service.dart';
import 'features/elrn/presentation/bloc/theme/theme_bloc.dart';
import 'features/elrn/presentation/pages/home_page/home_page.dart';
import 'features/elrn/presentation/pages/start/login_oauth2_page.dart';
import 'features/elrn/presentation/pages/start/login_page.dart';
import 'features/elrn/presentation/pages/start/onboarding_page.dart';
late SharedPreferences prefs;


const String APP_VERSION = '1.2.0';
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

late Box box;
ThemeData themeData = lightTheme;

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

   // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  await Hive.initFlutter();
   await registerAdapters();
  prefs = await SharedPreferences.getInstance();
  box = await Hive.openBox('elrn');


   // //FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
   // await Future.delayed(const Duration(seconds: 1));
   // try {
   //   const fatalError = true;
   //   FlutterError.onError = (errorDetails) {
   //     writeLogsToStorage("${errorDetails.exception.toString()}\n${errorDetails.stack}");
   //     if (fatalError) {
   //       // If you want to record a "fatal" exception
   //       FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
   //       // ignore: dead_code
   //     } else {
   //       // If you want to record a "non-fatal" exception
   //       FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
   //     }
   //   };
   //   // Async exceptions
   //   PlatformDispatcher.instance.onError = (error, stack) {
   //     writeLogsToStorage("${error.toString()}\n${stack.toString()}");
   //     if (fatalError) {
   //       // If you want to record a "fatal" exception
   //       FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
   //       // ignore: dead_code
   //     } else {
   //       // If you want to record a "non-fatal" exception
   //       FirebaseCrashlytics.instance.recordError(error, stack);
   //     }
   //     return true;
   //   };
   //
   // } catch (e) {
   //   writeLogsToStorage("initilaization error ====================================================================$e");
   // }

   await initializeDependencies();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

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
  //last hiveTypeId =0
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _bloc = sl<ThemeBloc>();

  bool isDark = box.get('theme') == "dark";

  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> _routes =
      {
        '/home': (context) => const HomePage(pageIndex: 0),
        '/onboarding': (context) =>  OnboardingPage(),
        '/login': (context) => const LoginPage(),
        '/loginOauth2': (context) => const LoginOauth2Page(),
        '/start': (context) => const StartPage(),



    };
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocConsumer<ThemeBloc, ThemeState>(
          bloc: _bloc,
          listener: (context, state) {
            isDark = box.get('theme') == "dark";
          },
          builder: (context, state) {



        print("=================");
        print(state);
        print("=================");
        return MaterialApp(
          locale: context.locale,

          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          navigatorKey: navigatorKey,
          title: 'E-learning',
          theme: isDark ? darkTheme : lightTheme,
          debugShowCheckedModeBanner: false,
          routes: _routes,
          home: (( prefs.getString('token')?.isEmpty??true))?
            StartPage()  : const StartPage(

                ),
        );
      }),
    );
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




