import 'package:foodtest/domain/models/remote/meal_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'searchmeal_state.freezed.dart';

@freezed
class SearchmealState with _$SearchmealState {
  const factory SearchmealState({
    @Default(true) bool isInitial,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String errorMessage,
    @Default([]) List<MealModel> listMeal,
  }) = _Initial;
}
