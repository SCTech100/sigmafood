// import 'package:foodtest/domain/models/local/food_table.dart';
// import 'package:moor_flutter/moor_flutter.dart';
// import 'appdatabase_module.dart';

// part 'food_dao.g.dart';

// @UseDao(tables: [Foods])
// class FoodDao extends DatabaseAccessor<AppDatabase> with _$FoodDaoMixin {
//   FoodDao(AppDatabase db) : super(db);

//   Future insertMovie(Foods food) =>
//       into(foods).insert(food, mode: InsertMode.insertOrReplace);
//   Future updateMovie(Foods food) => update(foods).replace(food);
//   Future deleteMovie(Foods food) => delete(foods).delete(food);

//   Future deleteAllMovie() => delete(foods).go();
//   Future<List<Foods>> getAllMovie() => select(foods).get();
// }
