

sealed class DocumentsEvent {}

class DocumentsLoadEvent extends DocumentsEvent {
  final String programId;

  DocumentsLoadEvent({required this.programId});
}



