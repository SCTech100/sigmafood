import 'package:foodtest/domain/models/remote/meal_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_state.freezed.dart';

@freezed
class MealState with _$MealState {
  const factory MealState({
    Meal? meal,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String errorMessage,
  }) = _Initial;
}
