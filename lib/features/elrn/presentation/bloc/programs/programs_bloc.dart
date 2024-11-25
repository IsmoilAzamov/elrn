import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/data/datasources/local/prograam_db_service.dart';
import 'package:elrn/features/elrn/presentation/bloc/programs/programs_event.dart';
import 'package:elrn/features/elrn/presentation/bloc/programs/programs_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/program/program_entity.dart';

class ProgramsBloc extends Bloc<ProgramsEvent, ProgramsState> {
  final ProgramsDBService _programsDBService;

  ProgramsBloc( this._programsDBService) : super(ProgramsLoadingState()) {
    {
      on<ProgramsLoadEvent>(_load);
    }
  }

  _load(ProgramsLoadEvent event, Emitter<ProgramsState> emit) async {
    emit(ProgramsLoadingState());
    try {
      List<dynamic> programs = await _programsDBService.getPrograms();
      emit(ProgramsLoadedState( programs ));
      return;
    }on Error catch (e) {
      print(e);
      print(e.stackTrace);

      emit(ProgramsErrorState("something_went_wrong".tr()));
      return;
    }
  }
}
