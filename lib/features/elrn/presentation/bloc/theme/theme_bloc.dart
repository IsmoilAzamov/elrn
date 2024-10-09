import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../main.dart';

enum ThemeEvent { toggleDark, toggleLight }

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(box.get('theme', defaultValue: 'light') == 'light' ? LightTheme() : DarkTheme()) {
    on<ThemeEvent>((event, emit) {

      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: event==ThemeEvent.toggleLight ? const Color(0xffFFFFFF) : Colors.black,
        statusBarIconBrightness: event==ThemeEvent.toggleLight ? Brightness.dark : Brightness.light,
        statusBarBrightness: event==ThemeEvent.toggleLight  ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: event==ThemeEvent.toggleLight  ? Colors.white : Colors.black,
        systemNavigationBarIconBrightness: event==ThemeEvent.toggleLight ? Brightness.dark : Brightness.light,
      ));
      if (event == ThemeEvent.toggleDark) {
        box.put('theme', 'dark');
        emit(DarkTheme());
        return;
      }
      if (event == ThemeEvent.toggleLight) {
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