
sealed class CommentsEvent {}

class CommentsLoadEvent extends CommentsEvent {
  final String documentId;
  CommentsLoadEvent({required this.documentId});
}

class CommentsCreateEvent extends CommentsEvent {
  final Map<String, dynamic> dto;
  final String documentId;

  CommentsCreateEvent({required this.dto, required this.documentId});
}