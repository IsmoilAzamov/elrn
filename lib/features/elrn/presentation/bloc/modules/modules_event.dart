
sealed class ModulesEvent {}

class ModulesLoadEvent extends ModulesEvent {
  final String programId;

  ModulesLoadEvent({required this.programId});
}