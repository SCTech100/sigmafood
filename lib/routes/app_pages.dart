// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:foodtest/app/pages/home/view/home_view.dart';
import 'package:foodtest/app/pages/meal/view/meal_view.dart';

part 'app_routes.dart';

class AppRoutes {
  AppRoutes._();

  static const String INITIAL = Routes.INITIAL;
  static const String HOME = Routes.HOME;

  //list route
  static Map<String, Widget Function(BuildContext context)> routes = {
    Routes.HOME: (context) => const HomeView(),
    Routes.MEAL: (context) => const MealView(),
  };
}
