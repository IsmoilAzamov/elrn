
import '../../../../core/resources/datastate.dart';

abstract class LoginRepository {
  Future<DataState<String>> login();
}