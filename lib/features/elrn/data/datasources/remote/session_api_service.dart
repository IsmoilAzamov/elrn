import 'dart:io';

import 'package:dio/dio.dart';
import 'package:elrn/core/constants/urls.dart';
import 'package:elrn/features/elrn/domain/entities/auth_info/auth_info_entity.dart';
import 'package:retrofit/retrofit.dart';
part 'account_api_service.g.dart';

@RestApi(baseUrl: DOMAIN)
abstract class AccountApiService {
  factory AccountApiService(Dio dio) {
    return _AccountApiService(dio);
  }

  @GET('/api/Account/GetAuthInfo')
  Future<HttpResponse<AuthInfoEntity>> getAuthInfo();
}