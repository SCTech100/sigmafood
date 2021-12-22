import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:foodtest/data/constants.dart';

import 'logging_interceptor.dart';

class DioClient with DioMixin implements Dio {
  DioClient() {
    options = BaseOptions(
      baseUrl: Constants.url,
      contentType: 'application/json',
      connectTimeout: 30000,
      sendTimeout: 30000,
      receiveTimeout: 30000,
    );

    this.options = options;
    interceptors.add(LoggingInterceptor());
    httpClientAdapter = DefaultHttpClientAdapter();
  }
}
