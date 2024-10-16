import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/domain/repositories/account_repository.dart';
import 'package:elrn/features/elrn/domain/repositories/my_program_repository.dart';
import 'package:elrn/features/elrn/presentation/bloc/main/main_event.dart';
import 'package:elrn/features/elrn/presentation/bloc/main/main_state.dart';
import 'package:elrn/features/elrn/presentation/widgets/toasts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/resources/datastate.dart';
import 'modules_event.dart';
import 'modules_state.dart';

class ModulesBloc extends Bloc<ModulesEvent, ModulesState> {
  final MyProgramRepository _myProgramRepository;

  ModulesBloc( this._myProgramRepository) : super(ModulesLoadingState()) {
    {
      on<ModulesLoadEvent>(_load);
    }
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
}
