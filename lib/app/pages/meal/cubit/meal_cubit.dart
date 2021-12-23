import 'package:bloc/bloc.dart';
import 'package:foodtest/domain/models/remote/meal_response.dart';

import 'meal_state.dart';

class MealCubit extends Cubit<MealState> {
  MealCubit() : super(MealState());

  Future<void> initView(Meal? item) async {
    try {
      emit(state.copyWith(meal: item));
    } catch (e) {}
  }

  Future<void> favoriteMeal(int? fav, Meal? item) async {
    try {
      if (fav == 1) {
      } else if (fav == 0) {}
      emit(state.copyWith(meal: item));
    } catch (e) {}
  }
}
