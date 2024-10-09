import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/utils/get_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../main.dart';
import '../../bloc/theme/theme_bloc.dart';
import '../../widgets/toasts.dart';
import '../home_page/home_page.dart';
import '../simple_logout_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final themeBloc = BlocProvider.of<ThemeBloc>(navigatorKey.currentContext!);
  DateTime oldTime = DateTime.now();
  DateTime newTime = DateTime.now();
  DateTime? currentBackPressTime;
  @override
  Widget build(BuildContext context) {


    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          // CustomAppBar(title: "main_page".tr(),
          // onBackPressed:  onWillPop,
          //   isBac
          //  kButtonVisible: false,
          // ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                Image.asset( getLogo(), width: 32, height: 32,),
                  const SizedBox(width: 8,),
                  Text("Ismoil A`zamov", style: TextStyle(fontWeight: FontWeight.w600),)
                ],
              ),
              IconButton(onPressed: () {
                showSimpleToast("logout".tr());
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LogoutPage()));
              }, icon: Icon(Icons.notifications_outlined))
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.transparent,
            child: Text("account".tr()),
          ),
          ElevatedButton(
              onPressed: () {
                if (themeBloc.state is LightTheme) {
                  themeBloc.add(ThemeEvent.toggleDark);
                } else {
                  themeBloc.add(ThemeEvent.toggleLight);
                }

                // setState(() {});
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(pageIndex: 0)));
              },
              child: Text("change_theme".tr()))
        ]));
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
}
