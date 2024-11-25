import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';


sealed class TopicContentsState{}

class TopicContentsInitialState extends TopicContentsState{}

class TopicContentsLoadingState extends TopicContentsState{}

class TopicContentsLoadedState extends TopicContentsState{
  final MyLessonTopicChildEntity myLessonTopic;

  TopicContentsLoadedState( this.myLessonTopic);
}

class TopicContentsErrorState extends TopicContentsState{
  final String message;

  TopicContentsErrorState(this.message);
}

class SavedVideosLoadedState extends  TopicContentsState{
  final List<dynamic> videoLessons;

  SavedVideosLoadedState(this.videoLessons);
}