import 'package:elrn/features/elrn/domain/entities/program/program_entity.dart';

import '../../../domain/entities/auth_info/auth_info_entity.dart';

sealed class MainState{}

class MainInitialState extends MainState{}

class MainLoadingState extends MainState{}

class MainLoadedState extends MainState{
  final AuthInfoEntity authInfo;
  final List<ProgramEntity> programs;

  MainLoadedState(this.authInfo, this.programs);
}

class MainErrorState extends MainState{
  final String message;

  MainErrorState(this.message);
}