
import '../../../../core/resources/datastate.dart';
import '../entities/reference/reference_entity.dart';

abstract class MyCourseRepository {
  Future<DataState<String>> start({required String courseId});

 Future<DataState<List<ReferenceEntity>>> getMyReferences({required String programId});
}