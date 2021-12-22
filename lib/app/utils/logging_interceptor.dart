import 'dart:async';

import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  @override
  Future<FutureOr> onRequest(RequestOptions options,
      RequestInterceptorHandler requestInterceptorHandler) async {
    print("GET Headers:");
    options.headers.forEach((k, v) => print('$k: $v'));

    if (options.queryParameters != null) {
      print("queryParameters:");
      options.queryParameters.forEach((k, v) => print('$k: $v'));
    }
    if (options.data != null) {
      print("Body: ${options.data}");
    }
    return options;
  }

  @override
  Future<FutureOr> post(RequestOptions options) async {
    print("POST Headers:");
    options.headers.forEach((k, v) => print('$k: $v'));

    if (options.queryParameters != null) {
      print("queryParameters:");
      options.queryParameters.forEach((k, v) => print('$k: $v'));
    }
    if (options.data != null) {
      print("Body: ${options.data}");
    }
    return options;
  }

  @override
  // ignore: avoid_renaming_method_parameters
  Future<FutureOr> onError(DioError dioError,
      ErrorInterceptorHandler errorInterceptorHandler) async {
    print("<-- ${dioError.message} ");
    print(
        "${dioError.response != null ? dioError.response?.data : 'Unknown Error'}");
  }

  @override
  Future<FutureOr> onResponse(Response response,
      ResponseInterceptorHandler responseInterceptorHandler) async {
    print("<-- ${response.statusCode} ");
    print("Headers:");
    response.headers.forEach((k, v) => print('$k: $v'));
    print("Response: ${response.data}");
    print("<-- END HTTP");
  }
}
