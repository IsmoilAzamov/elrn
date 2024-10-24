// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentEntityImpl _$$CommentEntityImplFromJson(Map<String, dynamic> json) =>
    _$CommentEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      documentId: json['documentId'] as String?,
      userId: (json['userId'] as num?)?.toInt(),
      adminId: (json['adminId'] as num?)?.toInt(),
      docOn: json['docOn'] as String?,
      messageText: json['messageText'] as String?,
      repliedMessageId: (json['repliedMessageId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CommentEntityImplToJson(_$CommentEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'userId': instance.userId,
      'adminId': instance.adminId,
      'docOn': instance.docOn,
      'messageText': instance.messageText,
      'repliedMessageId': instance.repliedMessageId,
    };
