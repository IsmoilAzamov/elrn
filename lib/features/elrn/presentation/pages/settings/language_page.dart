
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../main.dart';
import '../../bloc/home/home_bloc.dart';
import '../../widgets/continue_button.dart';
import '../../widgets/my_scaffold.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  String _selectedLanguage = 'uz';
  bool isDark = prefs.getString("theme") != 'light';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _selectedLanguage = context.locale.toString();
    return SafeArea(
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
                  Navigator.pop(context);
                },
                title: 'back'.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget languageItem(String title, String locale) {
    return GestureDetector(
      onTap: () {
        MyApp.setLocale(context, Locale(locale.split('_').first, locale.split('_').last));
        // context.setLocale(Locale(locale.split('_').first, locale.split('_').last));
        //unique key
        final homeBloc = HomeBloc();
        homeBloc.add(1);


        setState(() {
          _selectedLanguage = locale;
        });
        box.put('lang', locale);


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
}
