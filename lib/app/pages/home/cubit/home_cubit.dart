import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodtest/app/utils/dio_client.dart';
import 'package:foodtest/app/utils/dio_result.dart';
import 'package:foodtest/app/utils/toast_function.dart';
import 'package:foodtest/data/repositories/meal/meal_repository.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());
  MealRepository mealRepository = MealRepository(DioClient());
  Future<void> initView() async {
    try {
      fetchData();
    } catch (e) {}
  }

  Future<void> fetchData() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    try {
      Result result = await mealRepository.fetchMealCategory();
      if (result.status == Status.SUCCESS) {
        emit(state.copyWith(isLoading: false, listMealCategory: result.body));
      } else {
        emit(state.copyWith(isLoading: false));
      }
      Result result2 = await mealRepository.fetchMealCategory();
      if (result.status == Status.SUCCESS) {
        emit(state.copyWith(isLoading: false, listMealCategory: result.body));
      } else {
        emit(state.copyWith(isLoading: false));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> fetchDataByCategory(String category) async {
    emit(state.copyWith(isLoadingMeal: true, errorMessage: ''));
    try {
      Result result = await mealRepository.fetchMealByCategory(category);
      if (result.status == Status.SUCCESS) {
        emit(state.copyWith(isLoadingMeal: false, listMeal: result.body));
      } else {
        emit(state.copyWith(isLoadingMeal: false));
      }
    } catch (e) {
      emit(state.copyWith(isLoadingMeal: false));
    }
  }

  void showContextMessage(BuildContext context) {
    if (state.errorMessage.isNotEmpty) {
      TToast.general(state.errorMessage);
      emit(state.copyWith(
        errorMessage: '',
      ));
    }
  }
}
