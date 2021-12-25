import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodtest/app/pages/favorite/view/favorite_view.dart';
import 'package:foodtest/app/pages/home/cubit/home_cubit.dart';
import 'package:foodtest/app/pages/home/cubit/home_state.dart';
import 'package:foodtest/app/pages/meal/view/meal_view.dart';
import 'package:foodtest/app/pages/searchmeal/view/searchmeal_view.dart';
import 'package:foodtest/app/widgets/meal_loadinggrid_widget.dart';
import 'package:shimmer/shimmer.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget getLoadingMealCategory() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
            10,
            (index) => Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Chip(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    label: Text(''),
                  ),
                )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit()..initView(context),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          HomeCubit cubit = context.read<HomeCubit>();
          cubit.showContextMessage(context);
        },
        builder: (context, state) {
          HomeCubit cubit = context.read<HomeCubit>();

          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: TextFormField(
                                          readOnly: true,
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return SearchMealView();
                                            })).then((value) {
                                              cubit.getFavoriteCount(context);
                                            });
                                          },
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      10, 10, 0, 10),
                                              hintText:
                                                  'What are you craving for',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: InputBorder.none)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return FavoriteView();
                                    },
                                  )).then((value) {
                                    cubit.getFavoriteCount(context);
                                  });
                                },
                                icon: Icon(Icons.favorite)),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: Visibility(
                                visible: state.favoriteCount != '0',
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                  ),
                                  alignment: Alignment.center,
                                  height: 18,
                                  width: 18,
                                  child: Text(
                                    state.favoriteCount,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Container(
                    height: 50,
                    child: state.isLoading
                        ? getLoadingMealCategory()
                        : ListView.builder(
                            itemCount: state.listMealCategory.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              String name =
                                  state.listMealCategory[index].strCategory ??
                                      '';
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 4),
                                child: GestureDetector(
                                  child: Chip(
                                    label: Text(name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: state.selectedCategory ==
                                                    state
                                                        .listMealCategory[index]
                                                ? Colors.orange
                                                : Colors.white)),
                                  ),
                                  onTap: () {
                                    cubit.selectCategory(
                                        state.listMealCategory[index]);
                                  },
                                ),
                              );
                            },
                          ),
                  ),
                  Expanded(
                      child: Container(
                    child: state.isLoadingMeal
                        ? MealLoadingGridWidget()
                        : RefreshIndicator(
                            onRefresh: () async {
                              cubit.fetchDataByCategory(
                                  state.selectedCategory!.strCategory ?? '');
                              return;
                            },
                            child: Scrollbar(
                              child: GridView.builder(
                                itemCount: state.listMeal.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                itemBuilder: (context, index) {
                                  String name =
                                      state.listMeal[index].strMeal ?? '';
                                  String strMealThumb =
                                      state.listMeal[index].strMealThumb ?? '';
                                  String idMeal =
                                      state.listMeal[index].idMeal ?? '';
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return MealView(
                                          item: state.listMeal[index],
                                        );
                                      })).then((value) {
                                        cubit.getFavoriteCount(context);
                                      });
                                    },
                                    child: Hero(
                                      tag: idMeal,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        height: 200,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  child: Image.network(
                                                    strMealThumb,
                                                    errorBuilder: (context,
                                                        error, stackTrace) {
                                                      return Icon(Icons.error);
                                                    },
                                                    loadingBuilder: (BuildContext
                                                            context,
                                                        Widget child,
                                                        ImageChunkEvent?
                                                            loadingProgress) {
                                                      if (loadingProgress ==
                                                          null) return child;
                                                      return Center(
                                                        child:
                                                            CircularProgressIndicator(
                                                          value: loadingProgress
                                                                      .expectedTotalBytes !=
                                                                  null
                                                              ? loadingProgress
                                                                      .cumulativeBytesLoaded /
                                                                  loadingProgress
                                                                      .expectedTotalBytes!
                                                              : null,
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                                height: 20,
                                                child: Text(
                                                  name,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                  )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
