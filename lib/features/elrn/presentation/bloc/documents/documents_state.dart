import 'package:elrn/features/elrn/domain/entities/certificate/certificate_entity.dart';

import '../../../domain/entities/reference/reference_entity.dart';

sealed class DocumentsState {}

class DocumentsLoadingState extends DocumentsState {}

class DocumentsLoadedState extends DocumentsState {
  List<ReferenceEntity> certificates;

  DocumentsLoadedState(this.certificates);
}

class DocumentsErrorState extends DocumentsState {
  final String message;

  DocumentsErrorState(this.message);
}