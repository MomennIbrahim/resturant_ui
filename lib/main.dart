import 'package:flutter/material.dart';
import 'package:resturant_ui_app/core/utils/app_router.dart';
import 'package:resturant_ui_app/core/utils/constace.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      title: 'Resturant UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        scaffoldBackgroundColor: Colors.white.withOpacity(.95),
        useMaterial3: false,
      ),
    );
  }
}
