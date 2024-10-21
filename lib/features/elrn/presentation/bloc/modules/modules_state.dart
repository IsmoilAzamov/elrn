import 'package:elrn/features/elrn/domain/entities/program/program_entity.dart';


sealed class ModulesState{}

class ModulesInitialState extends ModulesState{}

class ModulesLoadingState extends ModulesState{}

class ModulesLoadedState extends ModulesState{
  final List<CourseEntity> courses;

  ModulesLoadedState( this.courses);
}

class ModulesErrorState extends ModulesState{
  final String message;

  ModulesErrorState(this.message);
}