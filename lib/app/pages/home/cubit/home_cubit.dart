import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodtest/app/utils/dio_client.dart';
import 'package:foodtest/app/utils/dio_result.dart';
import 'package:foodtest/app/utils/toast_function.dart';
import 'package:foodtest/data/local/db/database_manager.dart';
import 'package:foodtest/data/local/db/meal_dao.dart';
import 'package:foodtest/data/repositories/meal/meal_repository.dart';
import 'package:foodtest/domain/models/remote/meal_category_response.dart';
import 'package:foodtest/domain/models/remote/meal_response.dart';
import 'package:provider/provider.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());
  MealRepository mealRepository = MealRepository();
  Future<void> initView(context) async {
    try {
      fetchData();
      getFavoriteCount(context);
    } catch (e) {}
  }

  Future<void> getFavoriteCount(BuildContext context) async {
    try {
      final dao = Provider.of<MealDao>(context, listen: false);
      List<Meal> list = await dao.getAllMeal();
      emit(state.copyWith(favoriteCount: list.length.toString()));
    } catch (e) {}
  }

  Future<void> fetchData() async {
    emit(
        state.copyWith(isLoading: true, isLoadingMeal: true, errorMessage: ''));
    try {
      MealCategory? firstcategory;
      Result<MealCategoryResponse> result =
          await mealRepository.fetchMealCategory();
      if (result.status == Status.SUCCESS) {
        firstcategory = (result.body!.mealCategoryList ?? []).isNotEmpty
            ? result.body!.mealCategoryList!.first
            : null;
        emit(state.copyWith(
            isLoading: false,
            listMealCategory: result.body!.mealCategoryList ?? []));
      } else {
        emit(state.copyWith(isLoading: false));
      }
      Result<MealResponse> result2 = await mealRepository
          .fetchMealByCategory(firstcategory?.strCategory ?? '');
      if (result2.status == Status.SUCCESS) {
        emit(state.copyWith(
            isLoadingMeal: false,
            isLoading: false,
            listMeal: result2.body!.mealList ?? [],
            selectedCategory: firstcategory));
      } else {
        emit(state.copyWith(
          isLoadingMeal: false,
          isLoading: false,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        isLoadingMeal: false,
        isLoading: false,
      ));
    }
  }

  Future<void> selectCategory(MealCategory item) async {
    emit(state.copyWith(selectedCategory: item));
    fetchDataByCategory(item.strCategory!);
  }

  Future<void> fetchDataByCategory(String category) async {
    emit(state.copyWith(isLoadingMeal: true, errorMessage: ''));
    try {
      Result result = await mealRepository.fetchMealByCategory(category);
      if (result.status == Status.SUCCESS) {
        emit(state.copyWith(
          isLoadingMeal: false,
          listMeal: result.body!.mealList ?? [],
        ));
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
