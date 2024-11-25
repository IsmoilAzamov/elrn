
import '../../../domain/entities/program/program_entity.dart';

sealed class ProgramsState{}

class ProgramsLoadedState extends ProgramsState{
  final List<dynamic> programs;

  ProgramsLoadedState(this.programs);
}

class ProgramsErrorState extends ProgramsState{
  final String message;

  ProgramsErrorState(this.message);
}

class ProgramsLoadingState extends ProgramsState{}