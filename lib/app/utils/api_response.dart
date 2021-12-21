import 'package:dio/dio.dart';

class Failure {
  final String message;
  Failure(this.message);
  factory Failure.fromError(Object e) {
    String errorMessage = e.toString();
    if (e is DioError) {
      errorMessage = e.message;
    }
    return Failure(errorMessage);
  }
}
