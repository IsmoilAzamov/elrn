import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/constants/app_colors.dart';
import 'package:elrn/features/elrn/presentation/pages/courses/test/lesson_test_page.dart';
import 'package:elrn/features/elrn/presentation/pages/courses/video_lesson/video_lesson_page.dart';
import 'package:elrn/features/elrn/presentation/widgets/app_bar.dart';
import 'package:elrn/features/elrn/presentation/widgets/custom_tile.dart';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../di.dart';
import '../../../../../main.dart';
import '../../../data/datasources/remote/login_api_service.dart';
import '../../bloc/theme/theme_bloc.dart';
import '../../widgets/toasts.dart';
import '../about/about_app_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CurvedAppBar(
                title: "settings".tr(),
                onBackPressed: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                padding: const EdgeInsets.only(top: 12, left: 12),
                child: Text(
                  "settings".tr(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Brightness.dark == Theme.of(context).brightness ? AppColors.darkBlue : AppColors.blueColor,
                  border: Border.all(color: AppColors.lightBlue),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(children: [
                  customTile(
                      title: "app_language".tr(),
                      iconUrl: "assets/icons/translate.png",
                      onTap: () {
                        Navigator.pushNamed(context, "/language");
                      }),
                  const SizedBox(height: 12),
                  customDivider(height: 1),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.middleBlue,
                        ),
                        child: Image.asset(
                          "assets/icons/briefcase.png",
                          width: 18,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          "dark_mode".tr(),
                          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                      BlocProvider(
                        create: (context) => themeBloc,
                        child: FlutterSwitch(
                          width: 50.0,
                          height: 24.5,
                          toggleSize: 24.5,
                          value: Brightness.dark == Theme.of(context).brightness,
                          borderRadius: 30.0,
                          padding: 0.0,
                          activeToggleColor: AppColors.bgDark,
                          inactiveToggleColor: Color(0xFF2F363D),
                          activeSwitchBorder: Border.all(
                            color: AppColors.middleBlue,
                            width: 1.0,
                          ),
                          inactiveSwitchBorder: Border.all(
                            color: AppColors.lightGray,
                            width: 1.0,
                          ),
                          activeColor: AppColors.middleBlue,
                          inactiveColor: AppColors.lightGray,
                          activeIcon: Icon(
                            Icons.nightlight_round,
                            color: Color(0xFFFFDF5D),
                          ),
                          inactiveIcon: Icon(
                            Icons.wb_sunny,
                            color: Color(0xFFFFDF5D),
                          ),
                          onToggle: (val) {
                            var themeBloc = BlocProvider.of<ThemeBloc>(context);
                            //if bloc is disposed then create a new one
                            if (themeBloc.isClosed) {
                              themeBloc = sl<ThemeBloc>();
                            }

                            if (val) {
                              prefs.setString('theme', 'dark');
                              themeBloc.add(ToggleDark());

                            } else {
                              prefs.setString('theme', 'light');
                              themeBloc.add(ToggleLight());

                            }
                            print("theme: ${themeBloc.state}");
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              Container(
                padding: const EdgeInsets.only(top: 12, left: 12),
                child: Text(
                  "contact_and_support".tr(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Brightness.dark == Theme.of(context).brightness ? AppColors.darkBlue : AppColors.blueColor,
                  border: Border.all(color: AppColors.lightBlue),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(children: [

                  customTile(
                      title: "telegram".tr(),
                      iconUrl: "assets/icons/send.png",
                      onTap: () {
                        showSimpleToast("coming_soon".tr());
                      }),
                  const SizedBox(height: 12),
                  customDivider(height: 1),
                  const SizedBox(height: 12),
                  customTile(
                      title: "contact_center".tr(),
                      iconUrl: "assets/icons/phone.png",
                      onTap: () {
                        // Navigator.pushNamed(context, "/language");
                        showElrnDialog(context: context, onConfirm: (){
                          launchUrl(Uri.parse("tel:+998 55 512 00 66"));
                        }, title: "${"do_you_want_to_call".tr()}: \n+998 55 512 00 66");
                      }),
                  const SizedBox(height: 12),
                  customDivider(height: 1),
                  const SizedBox(height: 12),
                  customTile(
                      title: "about_app".tr(),
                      iconUrl: "assets/icons/annotation.png",
                      onTap: () {
                        // Navigator.pushNamed(context, "/language");
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutAppPage()));
                      }),
                  const SizedBox(height: 12),
                  customDivider(height: 1),
                  const SizedBox(height: 12),
                  customTile(
                      title: "logout".tr(),
                      iconUrl: "assets/icons/logout.png",
                      iconBgColor: AppColors.redColor,
                      onTap: () async {
                        print("=========================isDark: ${prefs.getString("theme")!='light'}=========================");

                        showElrnDialog(
                          context: context,
                          onConfirm: () async {

                            try {
                              await LoginApiService().logout();

                              // if(context.mounted)Navigator.pop(context);

                              if (context.mounted) Navigator.pushReplacementNamed(context, '/loginOauth2');
                              // Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
                            } on Error catch (e) {
                              print("111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
                              print(e);
                              print(e.stackTrace);

                              showErrorToast('could_not_logout'.tr());
                              if (context.mounted) {
                                Navigator.pushNamedAndRemoveUntil(context, '/loginOauth2', (route) => false);
                              }
                            }
                          },
                          title: "logout".tr(),
                        );
                      }),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
