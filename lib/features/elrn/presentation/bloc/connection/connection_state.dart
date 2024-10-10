import 'package:equatable/equatable.dart';


sealed class ConnectionBlocState extends Equatable {
  @override
  List<Object> get props => []; // Empty since there are no properties for the base class
}

class ConnectionInitial extends ConnectionBlocState {
  @override
  List<Object> get props => []; // Override for empty properties
}

class ConnectionSuccess extends ConnectionBlocState {
  @override
  List<Object> get props => []; // Override for empty properties
}

class ConnectionFailureState extends ConnectionBlocState {
  @override
  List<Object> get props => []; // Override for empty properties
}
