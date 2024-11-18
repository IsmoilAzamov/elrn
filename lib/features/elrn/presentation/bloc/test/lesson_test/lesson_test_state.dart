import 'package:elrn/features/elrn/domain/entities/test/test_entity.dart';

import '../../../../domain/entities/my_lesson/my_lesson_entity.dart';


sealed class LessonTestState {}

class LessonTestLoadingState extends LessonTestState {}

class LessonTestLoadedState extends LessonTestState {
  final TestEntity testEntity;
  LessonTestLoadedState(this.testEntity);
}

class LessonTestErrorState extends LessonTestState {
  final String message;

  LessonTestErrorState(this.message);
}

class LessonTestSubmittedState extends LessonTestState {
  final LessonTestEntity testResult;
  LessonTestSubmittedState(this.testResult);
}
