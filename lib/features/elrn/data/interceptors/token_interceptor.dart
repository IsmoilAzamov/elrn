

import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:elrn/core/utils/get_language_code.dart';
import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../datasources/local/token_db_service.dart';




class TokenInterceptor extends Interceptor {
  @override
  Future onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    String token = await TokenService.accessToken();

    options.headers['Authorization'] = "Bearer $token";
    //contentType: 'application/json;
    options.headers['Content-Type'] = 'application/json-patch+json';
    // accept: plain/text
    options.headers['Accept'] = 'text/plain';
    // accept language: locale
    options.headers['Accept-Language'] = "uz-latn";
    options.headers['Cookie'] = "Authorization=$token";
    options.headers['Lang'] = getLangCode();
    //content language: locale
    print(options.uri);
     print(options.headers);
    log("request data: ${options.data}");
    print("headers: ${options.headers}");
    log(json.encode(options.data));

    // print('=================================');
    super.onRequest(options, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
     print(err.response?.statusCode);
    print(err.response?.data);
    print(err.requestOptions.uri);
    if(err.response?.statusCode == 401) {

      await TokenService.deleteToken();
      if(navigatorKey.currentContext!.mounted) {
        Navigator.of(navigatorKey.currentContext!).pushNamedAndRemoveUntil('/start', (route) => false);
      }
    }
    return super.onError(err, handler);
  }

  @override
  Future onResponse(Response response, ResponseInterceptorHandler handler) async {
    // print(response.statusCode);
    // log(response.data.toString());
    return super.onResponse(response, handler);
  }
}





