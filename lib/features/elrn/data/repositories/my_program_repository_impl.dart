import 'package:elrn/features/elrn/data/index.dart';

import '../../domain/entities/program/program_entity.dart';
import '../../domain/repositories/my_program_repository.dart';
import '../datasources/remote/my_program_api_service.dart';

class MyProgramRepositoryImpl implements MyProgramRepository {
  final MyProgramApiService _myProgramApiService;

  MyProgramRepositoryImpl(this._myProgramApiService);

  @override
  Future<DataState<List<ProgramEntity>>> getPrograms() => getCheckedResponse(() => _myProgramApiService.getPrograms());

  @override
  Future<DataState<List<CourseEntity>>> getMyCourses({required String programId}) => getCheckedResponse(() => _myProgramApiService.getMyCourses(programId));
}
