
import 'package:elrn/features/elrn/domain/entities/test/test_entity.dart';

sealed class LessonTestEvent {}

class LessonTestStartEvent extends LessonTestEvent {
  final String testId;

  LessonTestStartEvent({required this.testId});
}


class LessonTestSubmitEvent extends LessonTestEvent {
  List<AnswerResultEntity> answerResults;

  LessonTestSubmitEvent({required this.answerResults});
}
