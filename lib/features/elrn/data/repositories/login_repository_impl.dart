
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../core/resources/datastate.dart';
import '../../domain/repositories/login_repository.dart';
import '../datasources/remote/login_api_service.dart';
import '../error_handler/error_handler.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginApiService _loginApiService;

  LoginRepositoryImpl(this._loginApiService);

  @override
  Future<DataState<String>> login() async {
    try {
      final response = await _loginApiService.login();
      // print(response);
      return response;
  }
    on DioException catch (e) {
      DioException error = errorHandler(e);
      return DataError(error);
    } on Error catch (e) {
      return DataError(DioException(requestOptions: RequestOptions(path: 'something_went_wrong'.tr(), data: e.toString())));
    }
  }
}


