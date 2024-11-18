

sealed class CertificatesEvent {}

class CertificatesLoadEvent extends CertificatesEvent {
  final String programId;

  CertificatesLoadEvent({required this.programId});
}



