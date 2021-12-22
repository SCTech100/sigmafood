import 'package:dio/dio.dart';
import 'package:foodtest/app/utils/dio_result.dart';
import 'package:foodtest/app/utils/safecallapi.dart';

abstract class Repository {
  final Dio _dio;
  Repository(this._dio);

  Future<Result<T>> get<T>(
    String endpoint, {
    required Map<String, String> headers,
    Map<String, dynamic>? queryParameters,
    required ResponseConverter<T> converter,
  }) async {
    Options opsi = Options(headers: headers);
    var response = await safeCallApi(
        _dio.get(endpoint, queryParameters: queryParameters, options: opsi),
        converter);
    return response;
  }

  Future<Result<T>> post<T>(
    String endpoint, {
    required Map<String, String> headers,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    required ResponseConverter<T> converter,
  }) async {
    Options opsi = Options(headers: headers);
    var response = await safeCallApi(
        _dio.post(endpoint,
            queryParameters: queryParameters, data: data, options: opsi),
        converter);
    return response;
  }

  Future<Result<T>> download<T>(
    String endpoint,
    String savePath, {
    required Map<String, String> headers,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    required ResponseConverter<T> converter,
    Function(int, int)? onReceiveProgress,
  }) async {
    Options opsi = Options(headers: headers);
    var response = await safeCallApi(
        _dio.download(
          endpoint,
          savePath,
          queryParameters: queryParameters,
          data: data,
          options: opsi,
          onReceiveProgress: onReceiveProgress,
        ),
        converter);
    return response;
  }
}
