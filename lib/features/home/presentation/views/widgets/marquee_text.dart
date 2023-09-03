import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import '../../../../../core/utils/constace.dart';

class MarqueeText extends StatelessWidget {
  const MarqueeText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 30.0,
        child: Marquee(
          text: 'Hello everyone, Today there are more % offers',
          blankSpace: 20,
          style: const TextStyle(color: kPrimaryColor),
          fadingEdgeStartFraction: .1,
          fadingEdgeEndFraction: 0.2,
        ));
  }
}
