import 'package:foodtest/data/local/db/database_manager.dart';
import 'package:foodtest/domain/models/local/meal_table.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'meal_dao.g.dart';

@UseDao(tables: [Meals])
class MealDao extends DatabaseAccessor<AppDatabase> with _$MealDaoMixin {
  MealDao(AppDatabase db) : super(db);

  Future<int> insertMeal(Meal meal) =>
      into(meals).insert(meal, mode: InsertMode.insertOrReplace);
  Future<bool> updateMeal(Meal meal) => update(meals).replace(meal);
  Future<int> deleteMeal(Meal meal) => delete(meals).delete(meal);

  // Stream<bool> checkMealExist(Meal meal) {
  //   bool isExists=  false;
  //   existsQuery(selectOnly(meals));
  //   return isExists;
  // };
  Future<Meal?> checkMealExist(Meal meal) {
    final query = select(meals)..where((t) => t.idMeal.equals(meal.idMeal));

    return query.getSingleOrNull();
  }

  Future<int> deleteAllMeal() => delete(meals).go();
  Future<List<Meal>> getAllMeal() => select(meals).get();

  Stream<List<Meal>> watchAllMeals() {
    return (select(meals)
          ..orderBy(
            ([
              (t) =>
                  OrderingTerm(expression: t.strMeal, mode: OrderingMode.asc),
            ]),
          ))
        .watch();
  }
}
