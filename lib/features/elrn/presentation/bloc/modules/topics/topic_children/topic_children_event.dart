
sealed class TopicChildrenEvent {}

class TopicChildrenLoadEvent extends TopicChildrenEvent {
  final String parentId;

  TopicChildrenLoadEvent({required this.parentId});
}