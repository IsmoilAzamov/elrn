
sealed class TopicsEvent {}

class TopicsLoadEvent extends TopicsEvent {
  final String programId;

  TopicsLoadEvent({required this.programId});
}