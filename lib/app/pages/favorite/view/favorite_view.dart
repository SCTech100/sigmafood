import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodtest/app/pages/favorite/cubit/favorite_cubit.dart';
import 'package:foodtest/app/pages/favorite/cubit/favorite_state.dart';
import 'package:foodtest/app/pages/meal/view/meal_view.dart';
import 'package:foodtest/app/utils/toast_function.dart';
import 'package:foodtest/app/widgets/nodata_widget.dart';
import 'package:foodtest/data/local/db/database_manager.dart';
import 'package:foodtest/data/local/db/meal_dao.dart';
import 'package:foodtest/domain/models/remote/meal_response.dart';
import 'package:provider/provider.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  _FavoriteViewState createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  StreamBuilder<List<Meal>> _buildMealList(BuildContext context) {
    final dao = Provider.of<MealDao>(
      context,
    );

    return StreamBuilder(
      stream: dao.watchAllMeals(),
      builder: (context, AsyncSnapshot<List<Meal>> snapshot) {
        final meals = snapshot.data ?? [];
        Widget _buildListItem(Meal item, MealDao mealDao) {
          String strMealThumb = item.strMealThumb;
          String name = item.strMeal;
          return Card(
            child: Container(
              height: 400,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MealView(
                                item: MealModel(
                                    idMeal: item.idMeal,
                                    strMeal: item.strMeal,
                                    strMealThumb: item.strMealThumb));
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              strMealThumb,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(Icons.error);
                              },
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: Text(
                    name,
                    textAlign: TextAlign.center,
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () async {
                            int? stat = await dao.deleteMeal(item);

                            if (stat > 0) {
                              TToast.general('Removed from favorite');
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return Stack(
          children: [
            ListView.builder(
              itemCount: meals.length,
              itemBuilder: (_, index) {
                final itemMeal = meals[index];
                return _buildListItem(itemMeal, dao);
              },
            ),
            NoDataWidget(visible: meals.isEmpty, text: 'No Favorite yet')
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoriteCubit>(
      create: (context) => FavoriteCubit()..initView(),
      child: BlocConsumer<FavoriteCubit, FavoriteState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                title: Text('My Favorite'),
              ),
              body: _buildMealList(context));
        },
      ),
    );
  }
}
