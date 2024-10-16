import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/domain/repositories/my_lesson_repository.dart';
import 'package:elrn/features/elrn/domain/repositories/my_program_repository.dart';
import 'package:elrn/features/elrn/presentation/bloc/modules/topics/topics_event.dart';
import 'package:elrn/features/elrn/presentation/bloc/modules/topics/topics_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/resources/datastate.dart';
class TopicsBloc extends Bloc<TopicsEvent, TopicsState> {
  final MyLessonRepository _myLessonRepository;

  TopicsBloc( this._myLessonRepository) : super(TopicsLoadingState()) {
    {
      on<TopicsLoadEvent>(_load);
    }
  }

  _load(TopicsLoadEvent event, Emitter<TopicsState> emit) async {
    emit(TopicsLoadingState());
    final result = await _myLessonRepository.getByCourseId(courseId: event.programId);
    if (result is DataSuccess && result.data != null) {

      emit(TopicsLoadedState(result.data!));
      return;
    } else if (result is DataError) {
      emit(TopicsErrorState(result.error?.message ?? "something_went_wrong".tr()));
      return;
    }
    emit(TopicsErrorState("something_went_wrong".tr()));
  }
}
