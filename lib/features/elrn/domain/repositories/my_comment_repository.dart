

import '../../../../core/resources/datastate.dart';
import '../entities/comment/comment_entity.dart';

abstract class MyCommentRepository {
  Future<DataState<List<CommentEntity>>> get({required Map<String, dynamic> dto});

  Future<DataState<int>> create({required Map<String, dynamic> dto});
}