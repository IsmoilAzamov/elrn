import 'package:elrn/features/elrn/data/index.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/entities/program/program_entity.dart';
part 'my_program_api_service.g.dart';



@RestApi(baseUrl: DOMAIN)
abstract class MyProgramApiService {
  factory MyProgramApiService(Dio dio) {
    return _MyProgramApiService(dio);
  }

  @GET('/api/MyProgram/GetPrograms')
  Future<HttpResponse<List<ProgramEntity>>> getPrograms();

  @GET('/api/MyProgram/GetMyCourses/{programId}')
  Future<HttpResponse<List<CourseEntity>>> getMyCourses(@Path('programId') String programId);
}