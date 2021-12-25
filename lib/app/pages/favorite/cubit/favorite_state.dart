import 'package:foodtest/domain/models/remote/meal_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default([]) List<MealModel> listFavoriteMeal,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String errorMessage,
  }) = _Initial;
}
