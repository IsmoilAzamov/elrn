import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/domain/repositories/my_course_repository.dart';
import 'package:elrn/features/elrn/domain/repositories/my_program_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/resources/datastate.dart';
import 'modules_event.dart';
import 'modules_state.dart';

class ModulesBloc extends Bloc<ModulesEvent, ModulesState> {
  final MyProgramRepository _myProgramRepository;
  final MyCourseRepository _myCourseRepository;

  ModulesBloc( this._myProgramRepository, this._myCourseRepository) : super(ModulesLoadingState()) {

      on<ModulesLoadEvent>(_load);
    on<ModulesStartCourseEvent>(_loadStartCourse);
  }

  _load(ModulesLoadEvent event, Emitter<ModulesState> emit) async {
    emit(ModulesLoadingState());
    final result = await _myProgramRepository.getMyCourses(programId: event.programId);
    if (result is DataSuccess && result.data != null) {

      emit(ModulesLoadedState(result.data!));
      return;
    } else if (result is DataError) {
      emit(ModulesErrorState(result.error?.message ?? "something_went_wrong".tr()));
      return;
    }
    emit(ModulesErrorState("something_went_wrong".tr()));
  }

  _loadStartCourse(ModulesStartCourseEvent event, Emitter<ModulesState> emit) async {
    emit(ModulesLoadingState());
    final courseResult = await _myCourseRepository.start(courseId: event.courseId);

    if (courseResult is DataSuccess && courseResult.data != null) {
      final result = await _myProgramRepository.getMyCourses(programId: event.programId);
      if (result is DataSuccess && result.data != null) {

        emit(ModulesLoadedState(result.data!));
        return;
      } else if (result is DataError) {
        emit(ModulesErrorState(result.error?.message ?? "something_went_wrong".tr()));
        return;
      }
      emit(ModulesErrorState("something_went_wrong".tr()));
      return;
    } else if (courseResult is DataError) {
      emit(ModulesErrorState(courseResult.error?.error.toString() ?? "something_went_wrong".tr()));
      return;
    }

    emit(ModulesErrorState("something_went_wrong".tr()));
  }

}
