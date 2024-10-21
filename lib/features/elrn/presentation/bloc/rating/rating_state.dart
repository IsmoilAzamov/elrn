import 'package:elrn/features/elrn/domain/entities/rating/rating_entity.dart';


sealed class RatingState{}

class RatingInitialState extends RatingState{}

class RatingLoadingState extends RatingState{}

class RatingLoadedState extends RatingState{
  final RatingEntity rating;

  RatingLoadedState( this.rating);
}

class RatedState extends RatingState{
  final int ratingId;

  RatedState(this.ratingId);
}

class RatingErrorState extends RatingState{
  final String message;

  RatingErrorState(this.message);
}