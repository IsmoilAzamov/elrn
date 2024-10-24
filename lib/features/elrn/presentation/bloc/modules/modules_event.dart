
sealed class ModulesEvent {}

class ModulesLoadEvent extends ModulesEvent {
  final String programId;

  ModulesLoadEvent({required this.programId});
}

class ModulesStartCourseEvent extends ModulesEvent {
  final String courseId;
  final String programId;

  ModulesStartCourseEvent({required this.courseId, required this.programId});
}