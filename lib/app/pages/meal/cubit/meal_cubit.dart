import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:foodtest/app/utils/toast_function.dart';
import 'package:foodtest/data/local/db/database_manager.dart';
import 'package:foodtest/data/local/db/meal_dao.dart';
import 'package:foodtest/domain/models/remote/meal_response.dart';
import 'package:provider/provider.dart';

import 'meal_state.dart';

class MealCubit extends Cubit<MealState> {
  MealCubit() : super(MealState());

  Future<void> initView(MealModel? item, BuildContext context) async {
    try {
      checkInitFavorite(item, context);
      emit(state.copyWith(meal: item));
    } catch (e) {}
  }

  Future<void> checkInitFavorite(MealModel? item, BuildContext context) async {
    if (item != null) {
      bool isFavorite = false;

      final dao = Provider.of<MealDao>(context, listen: false);
      Meal meal = Meal(
          idMeal: item.idMeal!,
          strMeal: item.strMeal!,
          strMealThumb: item.strMealThumb!,
          isFavorite: true);
      Meal? mealItem = await dao.checkMealExist(meal);
      if (mealItem != null) {
        isFavorite = true;
      }
      emit(state.copyWith(isFavorite: isFavorite));
    }
  }

  void setFavorite(bool val) {
    emit(state.copyWith(isFavorite: val));
  }

  Future<int?> favoriteMeal(
      BuildContext context, int? fav, MealModel? item) async {
    final dao = Provider.of<MealDao>(context, listen: false);
    int? stat;
    bool isFavorite = false;
    try {
      Meal meal = Meal(
          idMeal: item!.idMeal!,
          strMeal: item.strMeal!,
          strMealThumb: item.strMealThumb!,
          isFavorite: true);
      if (fav == 1) {
        stat = await dao.insertMeal(meal);
        TToast.general('Added to favorite');
        isFavorite = true;
      } else if (fav == 0) {
        stat = await dao.deleteMeal(meal);
        TToast.general('Removed from favorite');
      }
      emit(state.copyWith(meal: item, isFavorite: isFavorite));
    } catch (e) {
      log(e.toString());
    }
    return stat;
  }
}
