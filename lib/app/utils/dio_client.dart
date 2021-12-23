import 'package:dio/dio.dart';
import 'package:foodtest/app/utils/dio_result.dart';
import 'package:foodtest/app/utils/logging_interceptor.dart';
import 'package:foodtest/app/utils/safecallapi.dart';

typedef OnSendProgressCallBack = Function(int sent, int total);

class DioClient {
  DioClient(
    String baseUrl,
  ) {
    dio = initiateDio(baseUrl);
  }

  late Dio dio;
  initiateDio(String baseUrl) {
    var _dio = Dio();
    _dio.options.baseUrl = baseUrl;
    // _dio.options.connectTimeout = 30000;
    // _dio.options.receiveTimeout = 30000;
    // _dio.interceptors.add(LoggingInterceptor());
    return _dio;
  }
}
