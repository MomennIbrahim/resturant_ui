import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resturant_ui_app/core/utils/constace.dart';
import 'package:resturant_ui_app/features/history/presentation/views/history_screen.dart';
import 'package:resturant_ui_app/features/home/presentation/views/home_screen.dart';
import 'package:resturant_ui_app/features/profile/presentation/views/profile_screen.dart';

import '../../../../home/presentation/views/widgets/marquee_text.dart';

class LayoutScreenBody extends StatefulWidget {
  const LayoutScreenBody({super.key});

  @override
  State<LayoutScreenBody> createState() => _LayoutScreenBodyState();
}

class _LayoutScreenBodyState extends State<LayoutScreenBody> {
  int index = 0;
  List<Widget> screens = const [
    HomeScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/Home.svg',
                colorFilter: index == 0 ? kSvgPrimaryColor : kSvgSecondColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/History.svg',
                  colorFilter: index == 1 ? kSvgPrimaryColor : kSvgSecondColor,
                ),
                label: 'History'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/Icon.svg',
                  colorFilter: index == 2 ? kSvgPrimaryColor : kSvgSecondColor,
                ),
                label: 'Profile'),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (currentIndex) {
            setState(() {
              index = currentIndex;
            });
          },
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: kPrimaryColor,
        ),
      ),
      body: screens[index],
    );
  }
}
