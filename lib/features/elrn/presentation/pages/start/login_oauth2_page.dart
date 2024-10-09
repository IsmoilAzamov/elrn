import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/utils/get_logo.dart';
import 'package:elrn/features/elrn/presentation/pages/home_page/network_aware_app.dart';
import 'package:elrn/features/elrn/presentation/widgets/error_widget.dart';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/loading_indicator.dart';
import '../../../../../di.dart';
import '../../bloc/start/login_oauth2/login_bloc.dart';
import '../../bloc/start/login_oauth2/login_event.dart';
import '../../bloc/start/login_oauth2/login_state.dart';
import '../home_page/home_page.dart';

class LoginOauth2Page extends StatefulWidget {
  const LoginOauth2Page({super.key});

  @override
  State<LoginOauth2Page> createState() => _LoginOauth2PageState();
}

class _LoginOauth2PageState extends State<LoginOauth2Page> {
  final _bloc = sl<LoginBloc>();

  @override
  void initState() {
    _bloc.add(LoginInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // try to login with flutter_appauth, if result is success, then navigates to home page, else shows error message
    return MyScaffold(
      body: BlocProvider(
        create: (context) => _bloc,
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if(state is LoginSuccessState){
              if(context.mounted){
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) =>  NetworkAwareApp()), (route) => false);
              }
            }
          },
          builder: (context, state) {
            // showSuccessToast(state.toString());
            if (state is LoginSuccessState) {
              // return _buildLoginErrorUi("something_went_wrong".tr());

              return loadingIndicator();
            }
            if (state is LoginInitialState) {
              return errorWidget(text: "something_went_wrong".tr(), onPressed: () {
                _bloc.add(LoginInitialEvent());
              },
                imageUrl: "assets/images/no_internet.png",

              );
            }

            if (state is LoginSuccessState || state is OfflineLoginState) {
              return loadingIndicator();
            }
            if (state is LoginErrorState) {
              return errorWidget(text: state.error.toString(), onPressed: () {
                _bloc.add(LoginInitialEvent());
              });
            }

            return errorWidget(text: "something_went_wrong".tr(), onPressed: () {
              _bloc.add(LoginInitialEvent());
            },
            imageUrl: "assets/images/no_internet.png",

            );
          },
        ),
      ),
    );
  }

}
