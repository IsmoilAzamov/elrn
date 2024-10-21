
sealed class VideoLessonEvent {}

class VideoLessonLoadEvent extends VideoLessonEvent {
  final String lessonId;

  VideoLessonLoadEvent({required this.lessonId});
}