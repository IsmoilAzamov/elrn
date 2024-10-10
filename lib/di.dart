import 'package:dio/dio.dart';
import 'package:elrn/features/elrn/data/datasources/remote/login_api_service.dart';
import 'package:elrn/features/elrn/presentation/bloc/connection/connection_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/start/login_oauth2/login_bloc.dart';
import 'package:get_it/get_it.dart';


import 'features/elrn/data/datasources/local/token_db_service.dart';
import 'features/elrn/data/interceptors/token_interceptor.dart';
import 'features/elrn/data/repositories/login_repository_impl.dart';
import 'features/elrn/domain/repositories/login_repository.dart';
import 'features/elrn/presentation/bloc/theme/theme_bloc.dart';
final sl = GetIt.instance;


Future<void> initializeDependencies() async {
  //dio
  //update token
  sl.registerSingletonAsync<String>(() async {
    String accessToken =  await TokenService.accessToken();
    return accessToken;
  });
  Dio dio = Dio();
  dio.interceptors.add(TokenInterceptor());
  sl.registerLazySingleton(() => dio);

  //services

  sl.registerLazySingleton<LoginApiService>(() => LoginApiService());


  //databases

  //repositories
  sl.registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl(sl()));


//bloc
sl.registerFactory(() => LoginBloc(sl()));
sl.registerFactory(() => ThemeBloc());
sl.registerFactory(() => ConnectionBloc());



}