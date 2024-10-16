import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/presentation/bloc/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../di.dart';
import '../../../../../main.dart';
import '../../widgets/continue_button.dart';
import '../../widgets/my_scaffold.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  String _selectedLanguage = 'uz';
  bool isDark = box.get('theme') == 'dark';

  final _bloc = sl<ThemeBloc>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _selectedLanguage = context.locale.toString();
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: isDark ? AppColors.bgDark : Colors.white,
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: isDark ? AppColors.bgDark : Colors.white,
        systemNavigationBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      ),
      child: SafeArea(
        child: MyScaffold(
          resizeToAvoidBottomInset: true,

          backgroundColor: isDark ? AppColors.bgDark : Colors.white, // Update background based on theme
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 32,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      // Toggle theme button
                      // Container(
                      //   decoration: BoxDecoration(
                      //     color: Colors.transparent,
                      //     shape: BoxShape.circle,
                      //     // boxShadow: [
                      //     //   BoxShadow(
                      //     //     color: isDark ? Colors.black54 : Colors.grey.withOpacity(0.3),
                      //     //     spreadRadius: 2,
                      //     //     blurRadius: 3,
                      //     //     offset: const Offset(0, 3),  // Shadow position
                      //     //   ),
                      //     // ],
                      //   ),
                      //   child: Material(
                      //     color: Colors.transparent,
                      //     shape: const CircleBorder(),
                      //     child: IconButton(
                      //       onPressed: () async {
                      //        toggleTheme();
                      //       },
                      //       icon: AnimatedSwitcher(
                      //         duration: const Duration(milliseconds: 300),
                      //         transitionBuilder: (child, anim) => RotationTransition(
                      //           turns: child.key == const ValueKey('light') ? Tween<double>(begin: 1, end: 0).animate(anim) : Tween<double>(begin: 0, end: 1).animate(anim),
                      //           child: FadeTransition(opacity: anim, child: child),
                      //         ),
                      //         child: Icon(
                      //           isDark ? Icons.light_mode : Icons.dark_mode,
                      //           key: ValueKey(isDark ? 'light' : 'dark'),
                      //           color: isDark ? Colors.yellow : AppColors.blueColor,
                      //         ),
                      //       ),
                      //       splashRadius: 12,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/lang.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: isDark ? Colors.white : AppColors.blueColor,
                ),
                Column(
                  children: [
                    Text(
                      'select_app_language'.tr(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 32),
                    languageItem("UZ", 'uz_UZ'),
                    languageItem('QR', 'kk_KZ'),
                    languageItem('RU', 'ru_RU'),
                  ],
                ),
                const SizedBox(height: 30),
                continueButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/onboarding');
                  },
                  title: 'next'.tr(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget languageItem(String title, String locale) {
    return GestureDetector(
      onTap: () {
        context.setLocale(Locale(locale.split('_').first, locale.split('_').last));
        setState(() {
          _selectedLanguage = locale;
        });
      },
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: _selectedLanguage == locale ? (isDark ? Colors.white : AppColors.blueColor) : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.only(left: 10),
              child: ClipOval(
                child: Image.asset(
                  'assets/icons/${locale.split('_').first}.png',
                  fit: BoxFit.cover,
                  width: 28,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                color: _selectedLanguage == locale ? (isDark ? Colors.black : Colors.white) : (isDark ? Colors.white : AppColors.blueColor),
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
  void toggleTheme() {
    setState(() {
      // Toggle the theme and save the new preference
      isDark = !isDark;
      box.put('theme', isDark ? 'dark' : 'light');
      _bloc.add(isDark ? ToggleDark() : ToggleLight());
    });
  }
}
