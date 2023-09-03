import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import '../../../../../core/utils/constace.dart';
import '../../../../../core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Colors.black),
      leading: Image.asset(
        'assets/images/Group 3119.png',
        width: 16.0,
        height: 12.0,
      ),
      actions: const [
        CircleAvatar(
          radius: 18.0,
          backgroundColor: Colors.white38,
          foregroundImage: NetworkImage(
              'https://image.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg'),
        ),
        SizedBox(
          width: 15.0,
        ),
      ],
      elevation: 0.0,
      title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Icon(
          Icons.location_on,
          color: kPrimaryColor,
        ),
      Text(
          'Agrabad 435, Chittagong',
          style: Styles.style12.copyWith(color: const Color(0xff4B5563))),
      ]),
    );
  }
}
