import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  // If the subclasses have some properties, they'll get passed to this constructor
  // so that Equatable can perform value comparison.
  Failure([List properties = const <dynamic>[]]);

  @override
// TODO: implement props
  List<Object> get props => null;
}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
