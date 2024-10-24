import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/domain/repositories/my_lesson_repository.dart';
import 'package:elrn/features/elrn/presentation/bloc/test/start_lesson_test/start_lesson_test_event.dart';
import 'package:elrn/features/elrn/presentation/bloc/test/start_lesson_test/start_lesson_test_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/resources/datastate.dart';

class StartLessonTestBloc extends Bloc<StartLessonTestEvent, StartLessonTestState> {
  final MyLessonRepository _ratingRepository;

  StartLessonTestBloc(this._ratingRepository) : super(StartLessonTestLoadingState()) {
    on<StartLessonTestLoadEvent>(_load);
  }

  _load(StartLessonTestLoadEvent event, Emitter<StartLessonTestState> emit) async {
    emit(StartLessonTestLoadingState());
    try {
      print("11111111111111111111111111111111111111111111111111111111111111111111111111111111");
      final result = await _ratingRepository.getMyLessonsTest(testId: event.testId);
      print("222222222222222222222222222222222222222222222222222222222222222222222222222222");
      if (result is DataSuccess && result.data != null) {
        emit(StartLessonTestLoadedState(result.data!));
        return;
      } else if (result is DataError) {
        emit(StartLessonTestErrorState(result.error?.message ?? "something_went_wrong".tr()));
        return;
      } else {
        emit(StartLessonTestErrorState("something_went_wrong".tr()));
        return;
      }
    } on Exception catch (e) {
      emit(StartLessonTestErrorState(e.toString()));
      print("3333333333333333333333333333333333333333333333333333333333333333333333333333333");
    }
    emit(StartLessonTestErrorState("something_went_wrong".tr()));
  }
}
