import 'package:dio/dio.dart';
import 'package:elrn/features/elrn/data/datasources/remote/account_api_service.dart';
import 'package:elrn/features/elrn/data/datasources/remote/login_api_service.dart';
import 'package:elrn/features/elrn/data/datasources/remote/my_comment_api_service.dart';
import 'package:elrn/features/elrn/data/datasources/remote/my_course_api_service.dart';
import 'package:elrn/features/elrn/data/repositories/account_repository_impl.dart';
import 'package:elrn/features/elrn/data/repositories/my_course_repository_impl.dart';
import 'package:elrn/features/elrn/data/repositories/rating_repository_impl.dart';
import 'package:elrn/features/elrn/domain/repositories/account_repository.dart';
import 'package:elrn/features/elrn/domain/repositories/my_comment_repository.dart';
import 'package:elrn/features/elrn/domain/repositories/my_course_repository.dart';
import 'package:elrn/features/elrn/domain/repositories/my_lesson_repository.dart';
import 'package:elrn/features/elrn/domain/repositories/my_program_repository.dart';
import 'package:elrn/features/elrn/domain/repositories/rating_repository.dart';
import 'package:elrn/features/elrn/presentation/bloc/certificate/certificates_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/connection/connection_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/documents/documents_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/image_bloc/image_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/main/main_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/modules/modules_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/modules/topics/topic_children/topic_contents/topic_contents_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/modules/topics/topics_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/rating/rating_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/start/login_oauth2/login_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/test/lesson_test/lesson_test_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/test/start_lesson_test/start_lesson_test_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/video_lesson/video_lesson_bloc.dart';
import 'package:get_it/get_it.dart';

import 'features/elrn/data/datasources/local/token_db_service.dart';
import 'features/elrn/data/datasources/remote/my_lesson_api_service.dart';
import 'features/elrn/data/datasources/remote/my_program_api_service.dart';
import 'features/elrn/data/datasources/remote/rating_api_service.dart';
import 'features/elrn/data/interceptors/token_interceptor.dart';
import 'features/elrn/data/repositories/login_repository_impl.dart';
import 'features/elrn/data/repositories/my_comment_repository_impl.dart';
import 'features/elrn/data/repositories/my_lesson_repository_impl.dart';
import 'features/elrn/data/repositories/my_program_repository_impl.dart';
import 'features/elrn/domain/repositories/login_repository.dart';
import 'features/elrn/presentation/bloc/modules/topics/topic_children/topic_children_bloc.dart';
import 'features/elrn/presentation/bloc/theme/theme_bloc.dart';
import 'features/elrn/presentation/bloc/universal/comments_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //dio
  //update token
  sl.registerSingletonAsync<String>(() async {
    String accessToken = await TokenService.accessToken();
    return accessToken;
  });
  Dio dio = Dio();

  dio.interceptors.add(TokenInterceptor());
  //add duration
  dio.options.connectTimeout = Duration(seconds: 12);
  dio.options.receiveTimeout = Duration(seconds: 12);
  sl.registerLazySingleton(() => dio);

  //services

  sl.registerLazySingleton<LoginApiService>(() => LoginApiService());
  sl.registerLazySingleton<AccountApiService>(() => AccountApiService(sl()));
  sl.registerLazySingleton<MyProgramApiService>(() => MyProgramApiService(sl()));
  sl.registerLazySingleton<MyLessonApiService>(() => MyLessonApiService(sl()));
  sl.registerLazySingleton<RatingApiService>(() => RatingApiService(sl()));
  sl.registerLazySingleton<MyCommentApiService>(() => MyCommentApiService(sl()));
  sl.registerLazySingleton<MyCourseApiService>(() => MyCourseApiService(sl()));

  //databases

  //repositories
  sl.registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl(sl()));
  sl.registerLazySingleton<AccountRepository>(() => AccountRepositoryImpl(sl()));
  sl.registerLazySingleton<MyProgramRepository>(() => MyProgramRepositoryImpl(sl()));
  sl.registerLazySingleton<MyLessonRepository>(() => MyLessonRepositoryImpl(sl()));
  sl.registerLazySingleton<RatingRepository>(() => RatingRepositoryImpl(sl()));
  sl.registerLazySingleton<MyCommentRepository>(() => MyCommentRepositoryImpl(sl()));
  sl.registerLazySingleton<MyCourseRepository>(() => MyCourseRepositoryImpl(sl()));

//bloc
  sl.registerFactory(() => LoginBloc(sl()));
  sl.registerFactory(() => ThemeBloc());
  sl.registerFactory(() => ConnectionBloc());
  sl.registerFactory(() => MainBloc(sl(), sl()));
  sl.registerFactory(() => ModulesBloc(sl(),sl()));
  sl.registerFactory(() => ImageBloc());
  sl.registerFactory(() => TopicsBloc(sl()));
  sl.registerFactory(() => TopicChildrenBloc(sl()));
  sl.registerFactory(() => TopicContentsBloc(sl()));
  sl.registerFactory(() => VideoLessonBloc(sl()));
  sl.registerFactory(() => RatingBloc(sl()));
  sl.registerFactory(() => CommentsBloc(sl()));
  sl.registerFactory(() => StartLessonTestBloc(sl()));
  sl.registerFactory(() => LessonTestBloc(sl()));
  sl.registerFactory(() => CertificatesBloc(sl()));
  sl.registerFactory(() => DocumentsBloc(sl()));
}
