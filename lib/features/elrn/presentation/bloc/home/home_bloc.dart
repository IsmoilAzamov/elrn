

import 'package:bloc/bloc.dart';

class HomeBloc extends Bloc<int, int> {
  HomeBloc() : super(0){

    on<int>((event, emit) {
      emit(event);
    });
  }
}