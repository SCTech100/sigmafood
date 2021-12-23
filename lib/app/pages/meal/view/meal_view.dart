import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodtest/app/pages/favorite/view/favorite_view.dart';
import 'package:foodtest/app/pages/meal/cubit/meal_cubit.dart';
import 'package:foodtest/app/pages/meal/cubit/meal_state.dart';
import 'package:foodtest/domain/models/remote/meal_response.dart';
import 'package:foodtest/main.dart';

class MealView extends StatelessWidget {
  final Meal? item;
  const MealView({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MealCubit>(
      create: (context) => MealCubit()..initView(item),
      child: BlocConsumer<MealCubit, MealState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          String idMeal = item?.idMeal ?? '';
          String strMeal = item?.strMeal ?? '';
          String strMealThumb = item?.strMealThumb ?? '';

          MealCubit cubit = context.read<MealCubit>();
          try {
            return SafeArea(
              child: Hero(
                tag: idMeal,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(strMealThumb),
                        height: 400,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        strMeal,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          int? fav;
                          if (!state.isFavorite) {
                            fav = 1;
                          } else {
                            fav = 0;
                          }
                          cubit.favoriteMeal(fav, item);
                        },
                        child: Text(!state.isFavorite
                            ? 'Add to Favorite'
                            : "Delete from favorite"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return FavoriteView();
                            },
                          ));
                        },
                        child: Text('Favorite List'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          navigator.pop(context);
                        },
                        child: Text("Back"),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } catch (e) {
            return Container();
          }
        },
      ),
    );
  }
}
