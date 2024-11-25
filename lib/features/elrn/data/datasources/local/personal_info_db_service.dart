import 'package:elrn/features/elrn/domain/entities/auth_info/auth_info_entity.dart';

import '../../../../../main.dart';

class AuthInfoDBService {
  AuthInfoEntity _authInfo = box.get('authInfo', defaultValue: AuthInfoEntity())!;

  Future<void> putAuthInfo(AuthInfoEntity authInfo) async {
    _authInfo = authInfo;
    await box.put('authInfo', _authInfo);
  }

  Future<AuthInfoEntity> getAuthInfo() async {
    return _authInfo;
  }

  Future<void> deleteAuthInfo() async {
    _authInfo = AuthInfoEntity();
    await box.put('authInfo', _authInfo);
  }
}
