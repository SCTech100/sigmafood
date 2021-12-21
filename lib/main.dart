import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:foodtest/app/pages/home_page.dart';
import 'package:foodtest/routes.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: HomePage()));
}
