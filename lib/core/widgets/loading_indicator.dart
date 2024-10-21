import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../constants/app_colors.dart';

Widget loadingIndicator({double? width, double? height}) {
  return Container(
    padding: const EdgeInsets.all(8),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ConstrainedBox(
              constraints:  BoxConstraints(
                maxWidth: width ?? 100,
                maxHeight:height ?? 100,
              ),
              child: LoadingIndicator(
                indicatorType: Indicator.ballClipRotatePulse,
                colors: [AppColors.blueColor, AppColors.lightBlue, AppColors.yellowColor, AppColors.redColor],
                strokeWidth: 4.0,
                pathBackgroundColor: AppColors.blueColor,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
