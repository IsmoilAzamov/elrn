import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';

sealed class StartLessonTestState {}

class StartLessonTestLoadingState extends StartLessonTestState {}

class StartLessonTestErrorState extends StartLessonTestState {
  final String message;
  StartLessonTestErrorState(this.message);
}

class StartLessonTestLoadedState extends StartLessonTestState {
 final LessonTestEntity lessonTest;

  StartLessonTestLoadedState(this.lessonTest);
}
