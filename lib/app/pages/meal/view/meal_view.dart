import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodtest/app/pages/meal/cubit/meal_cubit.dart';
import 'package:foodtest/app/pages/meal/cubit/meal_state.dart';

class MealView extends StatelessWidget {
  const MealView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MealCubit>(
      create: (context) => MealCubit(),
      child: BlocConsumer<MealCubit, MealState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: Column(
              children: [
                Container(
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Text('A'),
                      );
                    },
                  ),
                ),
                Expanded(
                    child: Container(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Text('A'),
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
