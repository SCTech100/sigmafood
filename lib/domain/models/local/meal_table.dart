import 'package:moor_flutter/moor_flutter.dart';

class Meals extends Table {
  TextColumn get idMeal => text()();
  TextColumn get strMeal => text()();
  TextColumn get strMealThumb => text()();
  BoolColumn get isFavorite => boolean()();
}
