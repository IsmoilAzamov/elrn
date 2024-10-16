


import '../entities/program/program_entity.dart';
import '../index.dart';


abstract class MyProgramRepository {
  Future<DataState<List<ProgramEntity>>> getPrograms();

  Future<DataState<List<CourseEntity>>> getMyCourses({required String programId});
}