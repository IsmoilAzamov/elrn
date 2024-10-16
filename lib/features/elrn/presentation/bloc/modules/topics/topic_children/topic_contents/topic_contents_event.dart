
sealed class TopicContentsEvent {}

class TopicContentsLoadEvent extends TopicContentsEvent {
  final String topicId;

  TopicContentsLoadEvent({required this.topicId});
}