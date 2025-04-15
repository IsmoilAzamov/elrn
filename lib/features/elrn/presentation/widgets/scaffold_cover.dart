

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_colors.dart';

class ScaffoldCover extends StatelessWidget {
  final Scaffold child;
  const ScaffoldCover({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Theme.of(context).brightness == Brightness.dark ? Brightness.light : Brightness.dark,
    systemNavigationBarColor:
    Theme.of(context).brightness == Brightness.dark ? AppColors.bgDark.withValues(alpha: 1) : Color(0xffF5F5F5),
    systemNavigationBarIconBrightness:
    Theme.of(context).brightness == Brightness.dark ? Brightness.light : Brightness.dark,
    ),
    child: child,
    );
  }
}