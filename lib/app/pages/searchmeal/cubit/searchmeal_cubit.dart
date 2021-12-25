import 'package:bloc/bloc.dart';

import 'searchmeal_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodtest/app/utils/dio_client.dart';
import 'package:foodtest/app/utils/dio_result.dart';
import 'package:foodtest/app/utils/toast_function.dart';
import 'package:foodtest/data/repositories/meal/meal_repository.dart';
import 'package:foodtest/domain/models/remote/meal_category_response.dart';
import 'package:foodtest/domain/models/remote/meal_response.dart';

class SearchmealCubit extends Cubit<SearchmealState> {
  SearchmealCubit() : super(SearchmealState());
  MealRepository mealRepository = MealRepository();

  Future<void> initView() async {
    try {} catch (e) {}
  }

  Future<void> fetchData(String search) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    try {
      Result<MealResponse> result2 =
          await mealRepository.fetchMealBySearch(search);
      if (result2.status == Status.SUCCESS) {
        emit(state.copyWith(
            isLoading: false,
            listMeal: result2.body!.mealList ?? [],
            isInitial: false));
      } else {
        emit(state.copyWith(isLoading: false, isInitial: false));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, isInitial: false));
    }
  }
}
