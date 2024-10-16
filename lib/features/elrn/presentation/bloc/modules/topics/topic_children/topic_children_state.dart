import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';


sealed class TopicChildrenState{}

class TopicChildrenInitialState extends TopicChildrenState{}

class TopicChildrenLoadingState extends TopicChildrenState{}

class TopicChildrenLoadedState extends TopicChildrenState{
  final MyLessonTopicEntity myLessonTopic;

  TopicChildrenLoadedState( this.myLessonTopic);
}

class TopicChildrenErrorState extends TopicChildrenState{
  final String message;

  TopicChildrenErrorState(this.message);
}