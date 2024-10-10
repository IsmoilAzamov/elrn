import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:elrn/features/elrn/domain/entities/address/region_entity.dart';
import 'package:elrn/features/elrn/domain/entities/auth_info/auth_info_entity.dart';

import '../../../../core/resources/datastate.dart';
import '../../domain/repositories/account_repository.dart';
import '../datasources/remote/account_api_service.dart';
import '../error_handler/error_handler.dart';


class AccountRepositoryImpl  extends AccountRepository{
  final AccountApiService _accountApiService;

  AccountRepositoryImpl(this._accountApiService);


  @override
  Future<DataState<AuthInfoEntity>> getAuthInfo() async {
    try {
      var response = (await _accountApiService.getAuthInfo());
      if (response.response.statusCode == 200) {
        return DataSuccess(response.data);
      } else {
        DioException error = errorHandler(DioException(response: response.response, requestOptions: response.response.requestOptions, message: response.response.statusMessage));

        return DataError(error);
      }
    } on DioException catch (e) {
      print(e.stackTrace);
      DioException error = errorHandler(e);

      return DataError(error);
    }
  }


}