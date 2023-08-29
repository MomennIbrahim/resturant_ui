import 'package:flutter/material.dart';

import '../../../../../core/utils/constace.dart';
import '../../../../../core/utils/styles.dart';

class TabBarItems extends StatelessWidget {
  const TabBarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
        labelColor: kPrimaryColor,
        unselectedLabelColor: const Color(0xff89909E),
        labelStyle: Styles.style16.copyWith(fontWeight: FontWeight.w600),
        tabs: const [
          Tab(
            text: 'Create Account',
          ),
          Tab(
            text: 'Login',
          ),
        ],
        indicatorColor: kPrimaryColor,
        indicatorPadding: const EdgeInsets.symmetric(horizontal: 45.0),
        padding: const EdgeInsets.symmetric(horizontal: 36.0));
  }
}
