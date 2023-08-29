import 'package:flutter/material.dart';

import 'register_screen.dart';

class TabBarViewItems extends StatelessWidget {
  const TabBarViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(physics: const BouncingScrollPhysics(), children: [
      RegisterScreen(),
      const Center(child: Text('Login')),
    ]);
  }
}
