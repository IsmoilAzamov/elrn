import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/domain/repositories/rating_repository.dart';
import 'package:elrn/features/elrn/presentation/bloc/rating/rating_event.dart';
import 'package:elrn/features/elrn/presentation/bloc/rating/rating_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/resources/datastate.dart';
import '../../../domain/entities/rating/rating_entity.dart';

class RatingBloc extends Bloc<RatingEvent, RatingState> {
  final RatingRepository _ratingRepository;

  RatingBloc( this._ratingRepository) : super(RatingLoadingState()) {

      on<RatingLoadEvent>(_load);
      on<RateLessonEvent>(_rate);
  }

  _load(RatingLoadEvent event, Emitter<RatingState> emit) async {
    emit(RatingLoadedState(RatingEntity()));
    try{
      print("11111111111111111111111111111111111111111111111111111111111111111111111111111111");
      final result = await _ratingRepository.getMyLessonRating(lessonId: event.lessonId);
      print("222222222222222222222222222222222222222222222222222222222222222222222222222222");
      if (result is DataSuccess && result.data != null) {
        emit(RatingLoadedState(result.data!));
        return;
      } else if (result is DataError) {
        emit(RatingErrorState(result.error?.message ?? "something_went_wrong".tr()));
        return;
      } else {
        emit(RatingErrorState("something_went_wrong".tr()));
        return;
      }
    }
    on Exception catch (e) {
      emit(RatingErrorState(e.toString()));
      print("3333333333333333333333333333333333333333333333333333333333333333333333333333333");
    }
    emit(RatingErrorState("something_went_wrong".tr()));
  }


  _rate(RateLessonEvent event, Emitter<RatingState> emit) async {
    final result = await _ratingRepository.createLessonRating(documentId: event.documentId, lessonTypeId: event.lessonTypeId, ratingId: event.ratingId);
    if (result is DataSuccess) {
      emit(RatedState(event.ratingId));
      return;
    } else if (result is DataError) {
      emit(RatingErrorState(result.error?.message ?? "something_went_wrong".tr()));
      return;
    } else {
      emit(RatingErrorState("something_went_wrong".tr()));
      return;
    }
  }
}
