import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../main.dart';
import '../bloc/theme/theme_bloc.dart';

class MyScaffold extends StatefulWidget {
  final AppBar? appBar;
  final Widget? body;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final BottomNavigationBar? bottomNavigationBar;
  final Widget? bottomSheet;
  final bool? resizeToAvoidBottomInset;

  const  MyScaffold({
    super.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.resizeToAvoidBottomInset,
  });

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  @override
  Widget build(BuildContext context) {
    bool isDark = box.get("theme") == "dark";
    return SafeArea(

      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state)
        {
          print("------------------------");
          print(state.toString());
          print("------------------------");
          if (!isDark) {
            return Scaffold(
              key: widget.key,
              backgroundColor: widget.backgroundColor??AppColors.lightBgBlue,
              appBar: widget.appBar,
              resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
              body: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/background_pattern_light.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    // padding: const EdgeInsets.all(16.0),
                    child: widget.body,
                  )
                ],
              ),
              floatingActionButton: widget.floatingActionButton,
              bottomNavigationBar: widget.bottomNavigationBar,
              bottomSheet: widget.bottomSheet,
            );
          }
           if (isDark)
          {
            return Scaffold(

              backgroundColor: widget.backgroundColor??AppColors.darkBgBlue,
              appBar: widget.appBar,
              resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
              body: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/background_pattern.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    // padding: const EdgeInsets.all(16.0),
                    child: widget.body,
                  )
                ],
              ),
              floatingActionButton: widget.floatingActionButton,
              bottomNavigationBar: widget.bottomNavigationBar,
              bottomSheet:  widget.bottomSheet,

            );
          }
          return Scaffold(
            backgroundColor: widget.backgroundColor,
            appBar: widget.appBar,
            resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
            body: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/background_pattern.png',
                    fit: BoxFit.fill,
                  ),
                ),
               Container(
                 // padding: const EdgeInsets.all(16.0),
                 child: widget.body,
               )
              ],
            ),
            floatingActionButton: widget.floatingActionButton,
            bottomNavigationBar: widget.bottomNavigationBar,
            bottomSheet: widget.bottomSheet,
          );
        },
      ),
    );
  }
}
