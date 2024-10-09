import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../main.dart';

Widget continueButton({required VoidCallback onPressed, bool isLoading = false, String? title,Color? color, Color? textColor}) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(2.0),
        backgroundColor: isLoading ? WidgetStateProperty.all(AppColors.borderGray) : color != null?WidgetStateProperty.all(color):(box.get('theme') == 'dark'
            ?WidgetStateProperty.all(const Color(0xFFEAF2FF)): WidgetStateProperty.all(AppColors.blueColor)),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 15)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),

      child: Text(
        title ?? 'continue'.tr(),
        style:  TextStyle(
          color:textColor?? (box.get('theme') == 'dark' ? AppColors.bgDark : Colors.white),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
