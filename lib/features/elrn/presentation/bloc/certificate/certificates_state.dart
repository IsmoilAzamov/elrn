import 'package:elrn/features/elrn/domain/entities/certificate/certificate_entity.dart';

sealed class CertificatesState {}

class CertificatesLoadingState extends CertificatesState {}

class CertificatesLoadedState extends CertificatesState {
  List<CertificateEntity> certificates;

  CertificatesLoadedState(this.certificates);
}

class CertificatesErrorState extends CertificatesState {
  final String message;

  CertificatesErrorState(this.message);
}