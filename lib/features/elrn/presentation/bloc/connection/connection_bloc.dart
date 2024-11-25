import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'connection_state.dart';

part 'connection_event.dart';

class ConnectionBloc extends Bloc<ConnectionEvent, ConnectionBlocState> {
  late StreamSubscription<InternetConnectionStatus> _internetStream;

  ConnectionBloc() : super(ConnectionInitial()) {
    _monitorConnection();

    // Register event handlers
    on<ConnectionSuccessEvent>((event, emit) {
      emit(ConnectionSuccess());
    });

    on<ConnectionFailureEvent>((event, emit) {
      emit(ConnectionFailureState());
    });
  }

  void _monitorConnection() {
    _internetStream = InternetConnectionChecker().onStatusChange.listen((status) {
      if (true) {
        add(ConnectionSuccessEvent());
      } else {
        add(ConnectionFailureEvent());
      }
    });
  }

  @override
  Future<void> close() {
    _internetStream.cancel();
    return super.close();
  }
}
