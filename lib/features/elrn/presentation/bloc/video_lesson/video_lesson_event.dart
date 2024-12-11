
sealed class VideoLessonEvent {}

class VideoLessonLoadEvent extends VideoLessonEvent {
  final String lessonId;

  VideoLessonLoadEvent({required this.lessonId});
}

class VideoLessonRefreshEvent extends VideoLessonEvent {
  final String lessonId;

  VideoLessonRefreshEvent({required this.lessonId});
}