import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_appauth/flutter_appauth.dart';

import '../../../../../config/login_credentials/login_credentials.dart';
import '../../../../../core/resources/datastate.dart';
import '../../../../../main.dart';
import '../../models/token_model.dart';
import '../local/token_db_service.dart';

class LoginApiService {
  Future<DataState<String>>  login() async {
    print('#####################################56576###################################');
    try {

      const FlutterAppAuth appAuth = FlutterAppAuth();
      final AuthorizationTokenResponse result = await appAuth.authorizeAndExchangeCode(AuthorizationTokenRequest(
        LoginCredentials.clientId,
        LoginCredentials.redirectUrl,
        clientSecret: LoginCredentials.clientSecret,
        scopes: LoginCredentials.scope.split(" "),
        issuer: LoginCredentials.issuer,
        discoveryUrl: LoginCredentials.discoveryUrl,
      ));

      print("accessToken: ${result.accessToken}");
      print("tokenType: ${result.tokenType}");
      print("scopes: ${result.scopes}");
      print("idToken: ${result.idToken}");
      print("idToken: ${result.idToken}");
      print("tokenAdditionalParameters: ${result.tokenAdditionalParameters}");
      print("authorizationAdditionalParameters: ${result.authorizationAdditionalParameters}");
      print("refreshToken: ${result.refreshToken}");
      print("accessTokenExpirationDateTime: ${result.authorizationAdditionalParameters}");

      if (result.accessToken == null) {
        return DataError(DioException(requestOptions: RequestOptions(path: 'Error')));
      }
          TokenModelBox tokenModel = TokenModelBox(
        accessToken: result.accessToken ?? '',
        refreshToken: result.refreshToken ?? '',
        tokenType: result.tokenType ?? '',
        expiresIn: result.accessTokenExpirationDateTime ?? DateTime.now(),
        scopes: result.scopes ?? [],
        idToken: result.idToken ?? '',
        tokenAdditionalParameters: result.tokenAdditionalParameters ?? {},
        authorizationAdditionalParameters: result.authorizationAdditionalParameters ?? {},
      );
      await TokenService.saveToken(tokenModel);
      return DataSuccess(result.accessToken ?? '');
    } on Error catch (e) {
      print('Error during authentication: $e');
      print(e.stackTrace);
      return DataError(DioException(requestOptions: RequestOptions(path: 'Error')));
      // Handle other authentication errors
    }
  }

  Future<DataState<String>> logout() async {
    try {
      print('#####################################56576###################################');

 // String password = await box.get('password')??'';
 // int passcodeStatus = await box.get('passcodeStatus')??0;
       box.clear();
      // box.put('password', password);
      // box.put('passcodeStatus', passcodeStatus);
      prefs.setString('password', '');
      prefs.setInt('passcodeStatus', 0);
      const FlutterAppAuth appAuth = FlutterAppAuth();
      EndSessionResponse? result = await appAuth.endSession(
        EndSessionRequest(
          idTokenHint: await TokenService.idToken(),
          postLogoutRedirectUrl: LoginCredentials.redirectUrl,
          issuer: LoginCredentials.issuer,
          discoveryUrl: LoginCredentials.discoveryUrl,

          state: await TokenService.sessionState(),


        ),
      );
      await TokenService.deleteToken();

      print('############################21323############################################');
      print(result.state);
      return const DataSuccess("success");
    }on PlatformException{
      return const DataSuccess("success");
    } on Error catch (e) {
      print('Error during authentication: $e');
      print(e.stackTrace);
      return const DataSuccess("success");
      // Handle other authentication errors
    }
  }
}



