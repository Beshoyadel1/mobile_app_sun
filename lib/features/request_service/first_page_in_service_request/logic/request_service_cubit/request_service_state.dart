
abstract class RequestServiceState {}

class RequestServiceInitial extends RequestServiceState {}
class RequestServiceLoading extends RequestServiceState {}
class RequestServiceSuccess extends RequestServiceState {}
class RequestServiceError extends RequestServiceState {
  final String message;
  RequestServiceError(this.message);
}

