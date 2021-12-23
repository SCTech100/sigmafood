import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodtest/app/pages/home/cubit/home_cubit.dart';
import 'package:foodtest/app/pages/home/cubit/home_state.dart';
import 'package:foodtest/app/pages/meal/view/meal_view.dart';
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

  Widget getLoadingMeal() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: GridView.builder(
        itemCount: 10,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            height: 200,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit()..initView(),
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
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      cubit.initView();
                    },
                    child: Container(
                      child: Text(
                        'Welcome to Sigma Food',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
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
                                padding: const EdgeInsets.only(left: 8.0),
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
                        ? getLoadingMeal()
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
                                      }));
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
                                                child: ClipRect(
                                                  child: Image.network(
                                                    strMealThumb,
                                                    errorBuilder: (context,
                                                        error, stackTrace) {
                                                      return Icon(Icons.error);
                                                    },
                                                  ),
                                                ),
                                              ),
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
