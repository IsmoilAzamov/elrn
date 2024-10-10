

import 'package:elrn/core/resources/datastate.dart';

import '../entities/auth_info/auth_info_entity.dart';

abstract class AccountRepository {
  Future<DataState<AuthInfoEntity>> getAuthInfo();
}