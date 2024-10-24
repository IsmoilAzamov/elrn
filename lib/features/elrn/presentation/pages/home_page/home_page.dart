import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/constants/app_colors.dart';
import 'package:elrn/features/elrn/presentation/bloc/theme/theme_bloc.dart';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:elrn/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/home/home_bloc.dart';
import '../../widgets/success_bottom_sheet.dart';
import '../../widgets/toasts.dart';
import '../main/main_page.dart';

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

    pages.addAll([
      Container(),
      Container(),
    ]);
  }

  bool isDark = box.get('theme') == 'dark';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, int>(builder: (context, state) {
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (bool didPop, String? result) async {
            if (didPop) {
              return;
            }
            if (context.read<HomeBloc>().state == 0) {
              final bool shouldPop = await onWillPop();
              if (shouldPop) {
                SystemNavigator.pop();
              }
            } else {
              setState(() {
                context.read<HomeBloc>().add(0);
              });
            }
          },
          child: MyScaffold(
            //bottom navigation bar
            bottomSheet: Container(
                color: Colors.transparent,
                height: 65,
                width: double.infinity,
                child: Column(
                  children: [
                    Divider(
                      color: !isDark ? AppColors.blueColor : Colors.white,
                      thickness: 0.5,
                      height: 0.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        footerItem(
                          selected: state == 0,
                          state: state,
                          iconUrl: "home.png",
                          title: "main".tr(),
                          onTap: () {
                            context.read<HomeBloc>().add(0);
                            // showSuccessBottomSheet("login_success".tr());
                          },
                        ),
                        footerItem(
                          selected: state == 1,
                          state: state,
                          iconUrl: "award.png",
                          title: "certificates".tr(),
                          onTap: () {
                            context.read<HomeBloc>().add(1);
                          },
                        ),
                        footerItem(
                          selected: state == 2,
                          state: state,
                          iconUrl: "user.png",
                          title: "profile".tr(),
                          onTap: () {
                            context.read<HomeBloc>().add(2);
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
      }),
    );
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

  footerItem({required int state, required String iconUrl, required String title, required Function() onTap, required bool selected}) {
    return BlocBuilder(
        bloc: context.read<ThemeBloc>(),
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              onTap();
            },
            child: Container(
              height: 40,
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: selected ? (state is DarkTheme  ? Colors.green : AppColors.blueColor) : Colors.transparent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/$iconUrl',
                      width: 22, height: 22, color: state is DarkTheme ? (selected ? Colors.black : Colors.white) : (selected ? Colors.white : AppColors.blueColor)),
                  const SizedBox(width: 4),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(
                        color: state is DarkTheme ? (selected ? Colors.black : Colors.white) : (selected ? Colors.white : AppColors.blueColor),
                        fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        });
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
