import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodtest/app/pages/favorite/view/favorite_view.dart';
import 'package:foodtest/app/pages/meal/cubit/meal_cubit.dart';
import 'package:foodtest/app/pages/meal/cubit/meal_state.dart';
import 'package:foodtest/data/local/db/database_manager.dart';
import 'package:foodtest/data/local/db/meal_dao.dart';
import 'package:foodtest/domain/models/remote/meal_response.dart';
import 'package:provider/provider.dart';

class MealView extends StatelessWidget {
  final MealModel? item;
  const MealView({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MealCubit>(
      create: (context) => MealCubit()..initView(item, context),
      child: BlocConsumer<MealCubit, MealState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          String idMeal = item?.idMeal ?? '';
          String strMeal = item?.strMeal ?? '';
          String strMealThumb = item?.strMealThumb ?? '';

          MealCubit cubit = context.read<MealCubit>();
          return SafeArea(
              child: Hero(
                  tag: idMeal,
                  child: NestedScrollView(
                      body: Container(),
                      headerSliverBuilder:
                          (BuildContext context, bool innerBoxIsScrolled) {
                        return [
                          SliverAppBar(
                            expandedHeight: 250.0,
                            floating: true,
                            // pinned: true,
                            // snap: true,
                            actionsIconTheme: IconThemeData(opacity: 0.0),
                            flexibleSpace: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                    child: Image.network(
                                  strMealThumb,
                                  fit: BoxFit.cover,
                                ))
                              ],
                            ),
                          ),
                          SliverPadding(
                            padding: EdgeInsets.all(16.0),
                            sliver: SliverList(
                              delegate: SliverChildListDelegate([
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                                  child: Text(
                                    strMeal,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                                  child: Row(
                                    children: [
                                      ElevatedButton(
                                          onPressed: () async {
                                            // int? fav;
                                            // final dao = Provider.of<MealDao>(
                                            //     context,
                                            //     listen: false);
                                            // Meal meal = Meal(
                                            //     idMeal: item!.idMeal!,
                                            //     strMeal: item!.strMeal!,
                                            //     strMealThumb:
                                            //         item!.strMealThumb!,
                                            //     isFavorite: true);
                                            // int? stat;
                                            // if (!state.isFavorite) {
                                            //   fav = 1;
                                            //   stat = await dao.insertMeal(meal);
                                            //   if (stat > 0) {
                                            //     cubit.setFavorite(true);
                                            //   } else {
                                            //     cubit.setFavorite(false);
                                            //   }
                                            // } else {
                                            //   fav = 0;
                                            //   stat = await dao.deleteMeal(meal);

                                            //   if (stat > 0) {
                                            //     cubit.setFavorite(false);
                                            //   } else {
                                            //     cubit.setFavorite(false);
                                            //   }
                                            // }
                                            // print(stat);
                                            cubit.favoriteMeal(
                                                context,
                                                !state.isFavorite ? 1 : 0,
                                                item);
                                          },
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white),
                                          child: Row(
                                            children: [
                                              Icon(Icons.favorite,
                                                  color: state.isFavorite
                                                      ? Colors.red
                                                      : Colors.grey),
                                              Text(
                                                !state.isFavorite
                                                    ? 'Like'
                                                    : "Liked",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ],
                                          )),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ]),
                            ),
                          ),
                        ];
                      })));
        },
      ),
    );
  }
}
