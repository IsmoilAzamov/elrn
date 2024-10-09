
import 'package:dio/dio.dart';

sealed class LoginState {
  final DioException? error;

  const LoginState({ this.error});
}

class LoginInitialState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  const LoginSuccessState();
}

class LoginErrorState extends LoginState {
  const LoginErrorState( DioException error) : super(error: error);
}

class OfflineLoginState extends LoginState {}
