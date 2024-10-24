
import '../../../../core/resources/datastate.dart';

abstract class MyCourseRepository {
  Future<DataState<String>> start({required String courseId});
}