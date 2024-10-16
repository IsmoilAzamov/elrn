import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../main.dart';


sealed class ThemeEvent {}
class ToggleLight extends ThemeEvent {}
class ToggleDark extends ThemeEvent {}

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(box.get('theme', defaultValue: 'light') == 'light' ? LightTheme() : DarkTheme()) {
    on<ThemeEvent>((event, emit) {

      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: event is ToggleLight ? const Color(0xffFFFFFF) : AppColors.bgDark,
        statusBarIconBrightness: event is ToggleLight  ? Brightness.dark : Brightness.light,
        statusBarBrightness: event is ToggleLight   ? Brightness.light : Brightness.dark,
        systemNavigationBarColor:event is ToggleLight   ? Colors.white : AppColors.bgDark,
        systemNavigationBarIconBrightness:event is ToggleLight  ? Brightness.dark : Brightness.light,
      ));
      if (event is ToggleDark) {
        box.put('theme', 'dark');
        emit(DarkTheme());
        return;
      }
      if (event is ToggleLight ) {
        box.put('theme', 'light');
        emit(LightTheme());
        return;
      }
    });
  }
}

sealed class ThemeState {}

class DarkTheme extends ThemeState {}

class LightTheme extends ThemeState {}


// setStatusBarVisibility() {
//   ThemeEvent event = themeData == lightTheme ? ThemeEvent.toggleDark : ThemeEvent.toggleLight;
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: event==ThemeEvent.toggleLight ?getScaffoldBgColor() : Colors.black,
//     statusBarIconBrightness: event==ThemeEvent.toggleLight ? Brightness.dark : Brightness.light,
//     statusBarBrightness: event==ThemeEvent.toggleLight  ? Brightness.light : Brightness.dark,
//     systemNavigationBarColor: event==ThemeEvent.toggleLight  ? Colors.white : Colors.black,
//     systemNavigationBarIconBrightness: event==ThemeEvent.toggleLight ? Brightness.dark : Brightness.light,
//   ));
// }
//
//
// Color getScaffoldBgColor() {
//   return themeData == lightTheme ? Colors.white : Colors.black;
// }