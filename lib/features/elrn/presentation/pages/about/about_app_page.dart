import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/presentation/widgets/app_bar.dart';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:elrn/features/elrn/presentation/widgets/test_info_row.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../main.dart';
import '../courses/video_lesson/video_lesson_page.dart';

class AboutAppPage extends StatelessWidget {
  const AboutAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CurvedAppBar(
            title: "about_app".tr(),
          ),
          _loadedUI()
        ],
      ),
    );
  }

  Widget _loadedUI() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(navigatorKey.currentContext!).brightness == Brightness.dark ? AppColors.darkBlue : AppColors.blueColor,
                  border: Border.all(color: AppColors.lightBlue),
                ),
                child: Image.asset(
                  "assets/images/elrn_logo.png",
                  width: 45,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "E-learning",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "about_app_text".tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Theme.of(navigatorKey.currentContext!).brightness == Brightness.dark ? AppColors.darkBlue : AppColors.blueColor,
                  border: Border.all(
                    color: AppColors.lightBlue,
                  ),
                ),
                child: Column(
                  children: [
                    navigationRow(
                        title: "terms_of_use".tr(),
                        iconName: "info.png",
                        onTap: () async {
                          if (await canLaunchUrl(Uri.parse("https://istc.uz/privacy"))) {
                            await launchUrl(Uri.parse("https://istc.uz/privacy"));
                          }
                        }),
                    customDivider(height: 1),
                    navigationRow(
                        title: "privacy_policy".tr(),
                        iconName: "shield.png",
                        onTap: () async {
                          if (await canLaunchUrl(Uri.parse("https://istc.uz/privacy"))) {
                            await launchUrl(Uri.parse("https://istc.uz/privacy"));
                          }
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
