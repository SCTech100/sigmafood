import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:foodtest/app/utils/api_response.dart';
import 'package:foodtest/app/utils/dio_client.dart';

class FoodRepository {
  FoodRepository() : super();
  Future<Either<Failure, Map<String, dynamic>>> getFoodListBySearch(
      String search,
      [int? page,
      String? filter,
      int? rowCount]) async {
    bool hasError = false;
    Failure? failure;
    Map<String, dynamic>? res;
    try {
      Response response = await Dio().get(
        "https://www.themealdb.com/api/json/v1/1/search.php ",
        queryParameters: {"s": search},
        options: Options(contentType: Headers.jsonContentType),
      );
      if (response.statusCode == 200) {
        res = response.data;
      } else {
        throw response.statusMessage ?? 'Unknown server error';
      }
    } catch (e) {
      String errorMessage = e.toString();
      hasError = true;
      if (e is DioError) {
        errorMessage = e.message;
      }
      failure = Failure(errorMessage);
    }
    return hasError ? Left(failure!) : Right(res!);
  }

  Future<Either<Failure, Map<String, dynamic>>> getFoodCategoryList(
      [int? page, String? filter, int? rowCount]) async {
    bool hasError = false;
    Failure? failure;
    Map<String, dynamic>? res;
    try {
      Response response = await Dio().get(
        "https://www.themealdb.com/api/json/v1/1/categories.php",
        queryParameters: {},
        options: Options(contentType: Headers.jsonContentType),
      );
      if (response.statusCode == 200) {
        res = response.data;
      } else {
        throw response.statusMessage ?? 'Unknown server error';
      }
    } catch (e) {
      String errorMessage = e.toString();
      hasError = true;
      if (e is DioError) {
        errorMessage = e.message;
      }
      failure = Failure(errorMessage);
    }
    return hasError ? Left(failure!) : Right(res!);
  }

  Future<Either<Failure, Map<String, dynamic>>> getFoodListByCategory(
      String category,
      [int? page,
      String? filter,
      int? rowCount]) async {
    bool hasError = false;
    Failure? failure;
    Map<String, dynamic>? res;
    try {
      Response response = await Dio().get(
        "www.themealdb.com/api/json/v1/1/filter.php ",
        queryParameters: {"c": category},
        options: Options(contentType: Headers.jsonContentType),
      );
      if (response.statusCode == 200) {
        res = response.data;
      } else {
        throw response.statusMessage ?? 'Unknown server error';
      }
    } catch (e) {
      String errorMessage = e.toString();
      hasError = true;
      if (e is DioError) {
        errorMessage = e.message;
      }
      failure = Failure(errorMessage);
    }
    return hasError ? Left(failure!) : Right(res!);
  }
}
