import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodtest/app/pages/home/cubit/home_cubit.dart';
import 'package:foodtest/app/pages/home/cubit/home_state.dart';
import 'package:shimmer/shimmer.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget getLoadingMealCategory() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(
          5,
          (index) => SizedBox(
                width: 200.0,
                height: 100.0,
                child: Shimmer.fromColors(
                  baseColor: Colors.red,
                  highlightColor: Colors.yellow,
                  child: Text(
                    'Shimmer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
    );
  }

  Widget getLoadingMeal() {
    return ListView(
      children: List.generate(
          5,
          (index) => SizedBox(
                width: 200.0,
                height: 100.0,
                child: Shimmer.fromColors(
                  baseColor: Colors.red,
                  highlightColor: Colors.yellow,
                  child: Text(
                    'Shimmer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
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
          return Scaffold(
            body: Column(
              children: [
                Container(
                  height: 200,
                  child: state.isLoading
                      ? getLoadingMealCategory()
                      : ListView.builder(
                          itemCount: state.listMealCategory.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            String name =
                                state.listMealCategory[index].strCategory ?? '';
                            return Container(
                              child: Text(name),
                            );
                          },
                        ),
                ),
                Expanded(
                    child: Container(
                  child: ListView.builder(
                    itemCount: state.listMeal.length,
                    itemBuilder: (context, index) {
                      String name = state.listMeal[index].strMeal ?? '';
                      return Container(
                        child: Text(name),
                      );
                    },
                  ),
                )),
              ],
            ),
          );
        },
      ),
    );
  }
}
