part of 'connection_bloc.dart';

abstract class ConnectionEvent extends Equatable {
  const ConnectionEvent();

  @override
  List<Object> get props => [];
}

class ConnectionSuccessEvent extends ConnectionEvent {}

class ConnectionFailureEvent extends ConnectionEvent {}
