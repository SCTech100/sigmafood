import 'package:dio/dio.dart';
import 'package:foodtest/app/utils/dio_result.dart';

typedef ResponseConverter<T> = T Function(dynamic response);
Future<Result<T>> safeCallApi<T>(
    Future<Response<dynamic>> call, ResponseConverter<T> converter) async {
  try {
    var response = await call;
    var transform = converter(response.data);
    return Result.success(transform);
  } on DioError catch (e) {
    return Result.error(e.type, e.response?.statusCode ?? -1, e.response?.data);
  }
}
