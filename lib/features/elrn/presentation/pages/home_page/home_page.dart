import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/constants/app_colors.dart';
import 'package:elrn/features/elrn/presentation/pages/profile/profile_page.dart';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:elrn/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/update_dialog.dart';
import '../../../../../di.dart';
import '../../bloc/home/home_bloc.dart';
import '../../widgets/success_bottom_sheet.dart';
import '../../widgets/toasts.dart';
import '../main/main_page.dart';
import '../results/results_page.dart';

final homeBloc = sl<HomeBloc>();

class HomePage extends StatefulWidget {
  final int? pageIndex;
  final bool? initialLogin;

  const HomePage({super.key, required this.pageIndex, this.initialLogin});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime oldTime = DateTime.now();
  DateTime newTime = DateTime.now();
  DateTime? currentBackPressTime;

  List<Widget> pages = [MainPage()];


  @override
  void initState() {
    if (widget.initialLogin == true) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showSuccessBottomSheet('login_success'.tr());
      });
    }

    super.initState();
    checkNewVersion(navigatorKey.currentContext!, currentVersion: APP_VERSION);



    pages.addAll([
      ResultsPage(),
      ProfilePage(),
    ]);
  }

  bool isDark = prefs.getString("theme") != 'light';

  @override
  Widget build(BuildContext context) {
    box.watch(key: 'lang').listen((event) {
      setState(() {});
      print("lang changed");
      print(box.get('lang'));
      print(context.locale.toString());
      pages = [MainPage(), ResultsPage(), ProfilePage()];
    });

    return BlocBuilder<HomeBloc, int>(
        bloc: homeBloc,
        builder: (context, state) {
          return PopScope(
            canPop: false,
            onPopInvokedWithResult: (bool didPop, String? result) async {
              if (didPop) {
                return;
              }
              if (state == 0) {
                final bool shouldPop = await onWillPop();
                if (shouldPop) {
                  SystemNavigator.pop();
                }
              } else {
                setState(() {
                  homeBloc.add(0);
                });
              }
            },
            child: MyScaffold(
              //bottom navigation bar
              bottomSheet: Container(
                  color: Colors.transparent,
                  height: 65,
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Divider(
                        color: Theme.of(context).brightness == Brightness.dark ? Colors.white : AppColors.blueColor,
                        thickness: 0.5,
                        height: 0.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FooterItem(
                            selected: state == 0,
                            state: state,
                            iconUrl: "home.png",
                            title: "main".tr(),
                            onTap: () {
                              homeBloc.add(0);
                              // showSuccessBottomSheet("login_success".tr());
                            },
                          ),
                          FooterItem(
                            selected: state == 1,
                            state: state,
                            iconUrl: "award.png",
                            title: "my_results".tr(),
                            onTap: () {
                              homeBloc.add(1);
                            },
                          ),
                          FooterItem(
                            selected: state == 2,
                            state: state,
                            iconUrl: "user.png",
                            title: "profile".tr(),
                            onTap: () {
                              homeBloc.add(2);
                            },
                          ),
                        ],
                      ),
                    ],
                  )),
              body: IndexedStack(
                index: state,
                children: pages,
              ),
            ),
          );
        });
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null || now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      showSimpleToast(
        'double_tap_to_exit'.tr(),
      );
      return Future.value(false);
    }
    return Future.value(true);
  }

  void showSuccessBottomSheet(String message) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        builder: (context) => SuccessBottomSheet(message: message));
  }
}

class FooterItem extends StatefulWidget {
  final String iconUrl;
  final String title;
  final VoidCallback onTap;
  final bool selected;
  final int state;

  const FooterItem({
    super.key,
    required this.iconUrl,
    required this.title,
    required this.onTap,
    required this.selected,
    required this.state,
  });

  @override
  State<FooterItem> createState() => _FooterItemState();
}

class _FooterItemState extends State<FooterItem> {
  //listen to language changes from box.get("lang");

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        height: 40,
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: widget.selected ? (Theme.of(context).brightness == Brightness.dark ? Colors.green : AppColors.blueColor) : Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/${widget.iconUrl}',
                width: 22,
                height: 22,
                color: Theme.of(context).brightness == Brightness.dark ? (widget.selected ? Colors.black : Colors.white) : (widget.selected ? Colors.white : AppColors.blueColor)),
            const SizedBox(width: 2),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.25),
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: TextStyle(
                    color:
                        Theme.of(context).brightness == Brightness.dark ? (widget.selected ? Colors.black : Colors.white) : (widget.selected ? Colors.white : AppColors.blueColor),
                    fontWeight: widget.selected ? FontWeight.w600 : FontWeight.normal,
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
