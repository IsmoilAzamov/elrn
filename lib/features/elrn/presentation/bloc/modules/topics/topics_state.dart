import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';


sealed class TopicsState{}

class TopicsInitialState extends TopicsState{}

class TopicsLoadingState extends TopicsState{}

class TopicsLoadedState extends TopicsState{
  final MyLessonEntity myLesson;

  TopicsLoadedState( this.myLesson);
}

class TopicsErrorState extends TopicsState{
  final String message;

  TopicsErrorState(this.message);
}