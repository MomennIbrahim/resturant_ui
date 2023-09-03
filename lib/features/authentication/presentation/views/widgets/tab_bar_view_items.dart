import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class TabBarViewItems extends StatelessWidget {
  const TabBarViewItems({super.key, required this.isLogin});

  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    if(isLogin) {
      return TabBarView(physics: const BouncingScrollPhysics(), children: [
      RegisterScreen(),
      LogInScreen(),
    ]);
    }else{
      return TabBarView(physics: const BouncingScrollPhysics(), children: [
        LogInScreen(),
        RegisterScreen(),
      ]);
    }
  }
}
