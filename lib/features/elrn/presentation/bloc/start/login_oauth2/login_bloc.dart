import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/resources/datastate.dart';
import '../../../../domain/repositories/login_repository.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository _loginRepository;

  LoginBloc(this._loginRepository) : super(LoginInitialState()) {
    on<LoginInitialEvent>(_authorizeUser);
  }

  _authorizeUser(LoginInitialEvent event, Emitter<LoginState> emit) async {

      try {
      final dataState = await _loginRepository.login();
      print(dataState.data.toString());
      if (dataState is DataSuccess) {
        final data = dataState.data;
        if (data != null && data.isNotEmpty) {
          // print("Bearer token: $data");
          emit(const LoginSuccessState());
          return;
        } else {
          emit(LoginErrorState(DioException( error: "Error due to empty token: $data",
              requestOptions: RequestOptions(path: 's: $data'))));
        }
      }

      if (dataState is DataError) {
        emit(LoginErrorState(dataState.error!));
      }
      emit(LoginErrorState(DioException(requestOptions: RequestOptions(path: 'Error due to unknown exception'))));
    }on Error catch (e) {
        print(e.toString());
      if (e is SocketException) {
        emit(LoginErrorState(DioException(requestOptions: RequestOptions(path: 'Error due to SocketException: $e'))));
      } else {
        emit(LoginErrorState(DioException(requestOptions: RequestOptions(path: 'Error due to unknown exception: $e'))));
      }

    }
  }
}
