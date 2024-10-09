
import 'package:hive_flutter/hive_flutter.dart';

part 'token_model.g.dart';

@HiveType(typeId: 0)
class TokenModelBox {
  @HiveField(0)
  final String accessToken;
  @HiveField(1)
  final String refreshToken;
  @HiveField(2)
  final String tokenType;
  @HiveField(3)
  final DateTime expiresIn;
  @HiveField(4)
  final List<String> scopes;
  @HiveField(5)
  final String idToken;
  @HiveField(6)
  final Map<String, dynamic> authorizationAdditionalParameters;
  @HiveField(7)
  final Map<String, dynamic> tokenAdditionalParameters;


  TokenModelBox({
    required this.accessToken,
    required this.refreshToken,
    required this.tokenType,
    required this.expiresIn,
    required this.scopes,
    required this.idToken,
    required this.authorizationAdditionalParameters,
    required this.tokenAdditionalParameters,
  });

}