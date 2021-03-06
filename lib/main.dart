import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:foodtest/data/local/db/database_manager.dart';
import 'package:foodtest/routes/app_pages.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  EasyLoading.instance.indicatorWidget = Platform.isIOS || Platform.isMacOS
      ? CupertinoActivityIndicator()
      : CircularProgressIndicator(
          strokeWidth: 2,
        );
  runApp(MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
NavigatorState get navigator => navigatorKey.currentState!;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => AppDatabase().mealDao,
      builder: (context, child) {
        return MaterialApp(
          title: 'Sigma Food',
          themeMode: ThemeMode.light,
          routes: AppRoutes.routes,
          navigatorKey: navigatorKey,
          initialRoute: AppRoutes.HOME,
          theme: ThemeData.dark(),
          builder: EasyLoading.init(
            builder: (context, child) {
              return child!;
            },
          ),
          debugShowCheckedModeBanner: false,
        );
      },
      // child: MaterialApp(
      //   title: 'Sigma Food',
      //   themeMode: ThemeMode.light,
      //   routes: AppRoutes.routes,
      //   navigatorKey: navigatorKey,
      //   initialRoute: AppRoutes.HOME,
      //   theme: ThemeData.dark(),
      //   builder: EasyLoading.init(
      //     builder: (context, child) {
      //       return child!;
      //     },
      //   ),
      //   debugShowCheckedModeBanner: false,
      // ),
    );
  }
}
