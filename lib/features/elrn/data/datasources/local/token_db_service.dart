
import '../../../../../main.dart';
import '../../models/token_model.dart';

class TokenService {
  static Future<void> saveToken(TokenModelBox token) async {
    await box.put('token', token);
    prefs.setString('token', token.accessToken);
    //update sl() token
  }

  static Future<TokenModelBox?> getToken() async {
    return box.get('token');
  }

  static Future<bool> deleteToken() async {
    try{
      await box.put('token', null);
      prefs.setString('token', '');
      print('Token deleted');
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<String> accessToken() async {
    final token = await getToken();
    return token?.accessToken??'';
  }

  static Future<String> idToken() async {
    final token = await getToken();
    return token?.idToken??'null';
  }

  static Future<String> sessionState() async {
    final token = await getToken();
    return token?.authorizationAdditionalParameters['session_state']??'null';
  }
}
