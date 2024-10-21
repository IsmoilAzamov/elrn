
sealed class RatingEvent {}

class RatingLoadEvent extends RatingEvent {
  final String lessonId;

  RatingLoadEvent({required this.lessonId});
}

class RateLessonEvent extends RatingEvent {
  final String documentId;
  final String lessonTypeId;
  final int ratingId;

  RateLessonEvent({required this.documentId, required this.lessonTypeId, required this.ratingId});
}