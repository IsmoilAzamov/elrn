import 'package:elrn/features/elrn/domain/entities/auth_info/auth_info_entity.dart';

import '../../../../core/resources/datastate.dart';
import '../../domain/repositories/account_repository.dart';
import '../datasources/remote/account_api_service.dart';
import '../error_handler/error_handler.dart';

class AccountRepositoryImpl extends AccountRepository {
  final AccountApiService _accountApiService;

  AccountRepositoryImpl(this._accountApiService);

  @override
  Future<DataState<AuthInfoEntity>> getAuthInfo() => getCheckedResponse(() => _accountApiService.getAuthInfo());
}
