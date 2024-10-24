import '../../../domain/entities/comment/comment_entity.dart';

sealed class CommentsState {}

class CommentsInitialState extends CommentsState {}

class CommentsLoadingState extends CommentsState {}

class CommentsErrorState extends CommentsState {
  final String message;

  CommentsErrorState(this.message);
}

class CommentsLoadedState extends CommentsState {
  final List<CommentEntity> comments;

  CommentsLoadedState(this.comments);
}
