import 'package:equatable/equatable.dart';

abstract class FailureCondition extends Equatable {
  final String message;

  const FailureCondition(this.message);

  @override
  List<Object> get props => [message];
}

class ServerFailure extends FailureCondition {
  const ServerFailure(message) : super(message);
}

class ConnectionFailure extends FailureCondition {
  const ConnectionFailure(message) : super(message);
}
