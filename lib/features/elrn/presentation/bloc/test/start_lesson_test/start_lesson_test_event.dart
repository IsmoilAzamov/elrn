sealed class StartLessonTestEvent{}

class StartLessonTestLoadEvent extends StartLessonTestEvent{
  final String testId;

  StartLessonTestLoadEvent({required this.testId});
}
