import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/domain/repositories/my_lesson_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/resources/datastate.dart';
import 'lesson_test_event.dart';
import 'lesson_test_state.dart';

class LessonTestBloc extends Bloc<LessonTestEvent, LessonTestState> {
  final MyLessonRepository _ratingRepository;

  LessonTestBloc(this._ratingRepository) : super(LessonTestLoadingState()) {
    on<LessonTestStartEvent>(_start);
    on<LessonTestSubmitEvent>(_submit);
  }

  _start(LessonTestStartEvent event, Emitter<LessonTestState> emit) async {
    emit(LessonTestLoadingState());
    try {
      // print("11111111111111111111111111111111111111111111111111111111111111111111111111111111");
      final result = await _ratingRepository.startMyLessonTest(testId: event.testId);
      // print("222222222222222222222222222222222222222222222222222222222222222222222222222222");
      if (result is DataSuccess && result.data != null) {
        emit(LessonTestLoadedState(result.data!));
        return;
      } else if (result is DataError) {
        emit(LessonTestErrorState(result.error?.message ?? "something_went_wrong".tr()));
        return;
      } else {
        emit(LessonTestErrorState("something_went_wrong".tr()));
        return;
      }
    } on Exception catch (e) {
      emit(LessonTestErrorState(e.toString()));
      // print("3333333333333333333333333333333333333333333333333333333333333333333333333333333");
    }
    emit(LessonTestErrorState("something_went_wrong".tr()));
  }

  _submit(LessonTestSubmitEvent event, Emitter<LessonTestState> emit) async {
    emit(LessonTestLoadingState());
    try {
      final result = await _ratingRepository.finishMyLessonTest(answerResults: event.answerResults);
      if (result is DataSuccess && result.data != null) {
        emit(LessonTestSubmittedState(result.data!));
        return;
      } else if (result is DataError) {
        emit(LessonTestErrorState(result.error?.message ?? "something_went_wrong".tr()));
        return;
      } else {
        emit(LessonTestErrorState("something_went_wrong".tr()));
        return;
      }
    } on Exception catch (e) {
      emit(LessonTestErrorState(e.toString()));
    }
    emit(LessonTestErrorState("something_went_wrong".tr()));
  }
}

