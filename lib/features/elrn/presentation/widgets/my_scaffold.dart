import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../di.dart';
import '../bloc/connection/connection_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../main.dart';
import '../bloc/connection/connection_state.dart';
import '../bloc/theme/theme_bloc.dart';

class MyScaffold extends StatefulWidget {
  final AppBar? appBar;
  final Widget? body;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final BottomNavigationBar? bottomNavigationBar;
  final Widget? bottomSheet;
  final bool? resizeToAvoidBottomInset;

  const MyScaffold({
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
  bool _isDialogVisible = false;

  final _bloc = sl<ConnectionBloc>();
  bool isDark = box.get("theme") == "dark";

  void _showNoNetworkDialog() {
    if (!_isDialogVisible) {
      _isDialogVisible = true;
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => PopScope(
          canPop: false,
          child: Scaffold(
            backgroundColor: isDark ? AppColors.bgDark : AppColors.lightBgBlue,
            body: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    isDark ? 'assets/background_pattern.png' : 'assets/background_pattern_light.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/no_internet.png',
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.width * 0.5,
                        ),
                        const SizedBox(height: 32),
                        Text(
                          "network_connection_lost_try_again".tr(),
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "check_internet_connection".tr(),
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  void _closeNoNetworkDialog() {
    if (_isDialogVisible) {
      Navigator.of(context, rootNavigator: true).pop();
      _isDialogVisible = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => context.read<ThemeBloc>(),
        child: BlocConsumer<ThemeBloc, ThemeState>(
          bloc: context.read<ThemeBloc>(),
          listener: (context, themeState) {
            // print(themeState);
            // showSuccessToast(themeState.toString());
            setState(() {
              isDark = box.get("theme") == "dark";
            });
          },
          builder: (context, themeState) {
            return BlocProvider(
              create: (context) => _bloc,
              child: BlocConsumer<ConnectionBloc, ConnectionBlocState>(
                listener: (context, state) {
                  print(state);
                  if (state is ConnectionFailureState) {
                    _showNoNetworkDialog();
                  } else if (state is ConnectionSuccess) {
                    _closeNoNetworkDialog();
                  }
                },
                builder: (context, state) {
                  return Scaffold(
                    key: widget.key,
                    backgroundColor: isDark ? AppColors.bgDark : AppColors.lightBgBlue,
                    appBar: widget.appBar,
                    resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
                    body: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            isDark ? 'assets/background_pattern.png' : 'assets/background_pattern_light.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        widget.body ?? Container(),
                      ],
                    ),
                    floatingActionButton: widget.floatingActionButton,
                    bottomNavigationBar: widget.bottomNavigationBar,
                    bottomSheet: widget.bottomSheet,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
