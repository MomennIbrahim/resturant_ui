import 'package:flutter/material.dart';

import '../../../../../core/utils/constace.dart';
import '../../../../../core/utils/styles.dart';

class TabBarItems extends StatelessWidget {
  const TabBarItems({super.key, required this.isLogin});

  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        labelColor: kPrimaryColor,
        unselectedLabelColor: const Color(0xff89909E),
        labelStyle: Styles.style16.copyWith(fontWeight: FontWeight.w600),
        tabs: isLogin? const [
          Tab(
            text: 'Create Account',
          ),
          Tab(
            text: 'Login',
          ),
        ]:const [
          Tab(
            text: 'Login',
          ),
          Tab(
            text: 'Creat Account',
          ),
        ],
        indicatorColor: kPrimaryColor,
        indicatorPadding: const EdgeInsets.symmetric(horizontal: 45.0),
        padding: const EdgeInsets.symmetric(horizontal: 36.0));
  }
}
