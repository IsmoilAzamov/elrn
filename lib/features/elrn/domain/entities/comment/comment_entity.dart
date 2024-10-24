

import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_entity.freezed.dart';
part 'comment_entity.g.dart';

@freezed
abstract class CommentEntity with _$CommentEntity {
  factory CommentEntity({
    int? id,
    String? documentId,
    int? userId,
    int? adminId,
    String? docOn,
    String? messageText,
    int? repliedMessageId,
  }) = _CommentEntity;

  factory CommentEntity.fromJson(Map<String, dynamic> json) =>
      _$CommentEntityFromJson(json);
}