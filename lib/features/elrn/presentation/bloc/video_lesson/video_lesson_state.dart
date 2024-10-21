import 'package:chewie/chewie.dart';
import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';

sealed class VideoLessonState {}

class VideoLessonInitialState extends VideoLessonState {}

class VideoLessonLoadingState extends VideoLessonState {}

class VideoLessonLoadedState extends VideoLessonState {
  final ChewieController chewieController;
  final VideoLessonEntity videoLessonEntity;

  VideoLessonLoadedState(this.chewieController, this.videoLessonEntity);
}

class VideoLessonErrorState extends VideoLessonState {
  final String message;

  VideoLessonErrorState(this.message);
}
