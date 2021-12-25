// import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:foodtest/app/utils/dio_client.dart';
import 'package:foodtest/app/utils/dio_result.dart';
import 'package:foodtest/data/constants.dart';
import 'package:foodtest/data/repositories/repository.dart';
import 'package:foodtest/domain/models/remote/meal_category_response.dart';
import 'package:foodtest/domain/models/remote/meal_response.dart';

class MealRepository extends Repository {
  MealRepository() : super(DioClient(Constants.baseUrl));

  Future<Result<MealCategoryResponse>> fetchMealCategory() async {
    String url = "/api/json/v1/1/categories.php";
    final result = await get(url, headers: {}, converter: (response) {
      return MealCategoryResponse.fromJson(response);
    });
    return result;
  }

  Future<Result<MealResponse>> fetchMealByCategory(String category) async {
    String url = "/api/json/v1/1/filter.php";
    final result = await get(url, headers: {}, queryParameters: {'c': category},
        converter: (response) {
      return MealResponse.fromJson(response);
    });
    return result;
  }

  Future<Result<MealResponse>> fetchMealBySearch(String search) async {
    String url = "/api/json/v1/1/search.php";
    final result = await get(url, headers: {}, queryParameters: {'s': search},
        converter: (response) {
      return MealResponse.fromJson(response);
    });
    return result;
  }
}
