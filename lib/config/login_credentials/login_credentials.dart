
const String _authUrl='https://auth.ihma.uz';

abstract class LoginCredentials {
  static const String clientId = 'ihma_mobile';
  static const String clientSecret = '38f4113f-ff29-4c5b-a1e8-cb3aa8e15e37';
  static const String redirectUrl = 'ihmamobile2:/oauth2redirect';
  static const String scope = "IdentityServerApi ihma_ins_api ihma_snt_api ihma_adm_api ihma_eld_api ihma_mrv_api ihma_sxv_api ihma_yos_api ihma_pom_api openid";
  static const String issuer = _authUrl;
  static const String discoveryUrl = '$_authUrl/.well-known/openid-configuration';
}


abstract class LogoutCredentials {
  static const String clientId = 'ihma_mobile';
  static const String clientSecret = '38f4113f-ff29-4c5b-a1e8-cb3aa8e15e37';
  static const String redirectUrl = 'ihmamobile2:/oauth2redirect';
  static const String scope = "IdentityServerApi ihma_ins_api ihma_snt_api ihma_adm_api ihma_eld_api ihma_mrv_api ihma_sxv_api ihma_yos_api";
  static const String issuer = _authUrl;
  static const String discoveryUrl = '$_authUrl/.well-known/openid-configuration';
}




