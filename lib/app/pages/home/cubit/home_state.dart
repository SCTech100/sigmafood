import 'package:foodtest/domain/models/remote/meal_category_response.dart';
import 'package:foodtest/domain/models/remote/meal_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMeal,
    @Default(false) bool hasError,
    @Default('') String errorMessage,
    @Default([]) List<MealCategory> listMealCategory,
    @Default([]) List<Meal> listMeal,
  }) = _Initial;
}
