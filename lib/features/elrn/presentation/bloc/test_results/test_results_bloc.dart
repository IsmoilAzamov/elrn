import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/domain/repositories/my_lesson_repository.dart';
import 'package:elrn/features/elrn/domain/repositories/my_program_repository.dart';
import 'package:elrn/features/elrn/presentation/bloc/test_results/test_results_event.dart';
import 'package:elrn/features/elrn/presentation/bloc/test_results/test_results_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/resources/datastate.dart';

class TestResultsBloc extends Bloc<TestResultsEvent, TestResultsState> {
  final MyLessonRepository _myLessonRepository;

  TestResultsBloc( this._myLessonRepository) : super(TestResultsLoadingState()) {
    {
      on<TestResultsLoadEvent>(_load);
    }
  }

  _load(TestResultsLoadEvent event, Emitter<TestResultsState> emit) async {
    emit(TestResultsLoadingState());
    final result = await _myLessonRepository.getMyTestResults();
      if(result is DataSuccess && result.data != null) {
        emit(TestResultsLoadedState(result.data??[] ));

      return;
    } else if (result is DataError) {
      emit(TestResultsErrorState(result.error?.message ?? "something_went_wrong".tr()));
      return;
    }
    emit(TestResultsErrorState("something_went_wrong".tr()));
  }
}
