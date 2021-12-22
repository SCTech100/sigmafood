// import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:foodtest/app/utils/dio_result.dart';
import 'package:foodtest/data/repositories/repository.dart';
import 'package:foodtest/domain/models/remote/meal_category_response.dart';

class MealRepository extends Repository {
  MealRepository(Dio dio) : super(dio);

  Future<Result<MealCategoryResponse>> fetchMealCategory() async {
    String url = "/api/json/v1/1/categories.php";
    final result = await get(url,
        headers: {},
        converter: (response) => MealCategoryResponse.fromJson(response));
    return result;
  }

  Future<Result<MealCategoryResponse>> fetchMealByCategory(
      String category) async {
    String url = "/api/json/v1/1/filter.php";
    final result = await get(url,
        headers: {},
        queryParameters: {"c": category},
        converter: (response) => MealCategoryResponse.fromJson(response));
    return result;
  }
  // Future<Either<Failure, Map<String, dynamic>>> getMealListBySearch(
  //     String search,
  //     [int? page,
  //     String? filter,
  //     int? rowCount]) async {
  //   bool hasError = false;
  //   Failure? failure;
  //   Map<String, dynamic>? res;
  //   try {
  //     Response response = await Dio().get(
  //       "https://www.themealdb.com/api/json/v1/1/search.php ",
  //       queryParameters: {"s": search},
  //       options: Options(contentType: Headers.jsonContentType),
  //     );
  //     if (response.statusCode == 200) {
  //       res = response.data;
  //     } else {
  //       throw response.statusMessage ?? 'Unknown server error';
  //     }
  //   } catch (e) {
  //     String errorMessage = e.toString();
  //     hasError = true;
  //     if (e is DioError) {
  //       errorMessage = e.message;
  //     }
  //     failure = Failure(errorMessage);
  //   }
  //   return hasError ? Left(failure!) : Right(res!);
  // }

  // Future<Either<Failure, Map<String, dynamic>>> getMealCategoryList(
  //     [int? page, String? filter, int? rowCount]) async {
  //   bool hasError = false;
  //   Failure? failure;
  //   Map<String, dynamic>? res;
  //   try {
  //     Response response = await Dio().get(
  //       "https://www.themealdb.com/api/json/v1/1/categories.php",
  //       queryParameters: {},
  //       options: Options(contentType: Headers.jsonContentType),
  //     );
  //     if (response.statusCode == 200) {
  //       res = response.data;
  //     } else {
  //       throw response.statusMessage ?? 'Unknown server error';
  //     }
  //   } catch (e) {
  //     String errorMessage = e.toString();
  //     hasError = true;
  //     if (e is DioError) {
  //       errorMessage = e.message;
  //     }
  //     failure = Failure(errorMessage);
  //   }
  //   return hasError ? Left(failure!) : Right(res!);
  // }

  // Future<Either<Failure, Map<String, dynamic>>> getMealListByCategory(
  //     String category,
  //     [int? page,
  //     String? filter,
  //     int? rowCount]) async {
  //   bool hasError = false;
  //   Failure? failure;
  //   Map<String, dynamic>? res;
  //   try {
  //     Response response = await Dio().get(
  //       "www.themealdb.com/api/json/v1/1/filter.php ",
  //       queryParameters: {"c": category},
  //       options: Options(contentType: Headers.jsonContentType),
  //     );
  //     if (response.statusCode == 200) {
  //       res = response.data;
  //     } else {
  //       throw response.statusMessage ?? 'Unknown server error';
  //     }
  //   } catch (e) {
  //     String errorMessage = e.toString();
  //     hasError = true;
  //     if (e is DioError) {
  //       errorMessage = e.message;
  //     }
  //     failure = Failure(errorMessage);
  //   }
  //   return hasError ? Left(failure!) : Right(res!);
  // }
}
