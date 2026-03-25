import 'app_exception.dart';

class Failure {
  final String message;
  final AppException? exception;

  const Failure(this.message, [this.exception]);

  factory Failure.fromException(AppException exception) {
    return Failure(exception.message, exception);
  }

  @override
  String toString() => message;
}
