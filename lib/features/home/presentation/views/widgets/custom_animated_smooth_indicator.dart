import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/utils/constace.dart';

class CustomAnimatedSmoothIndicator extends StatelessWidget {
  const CustomAnimatedSmoothIndicator({
    super.key,
    required this.activeIndex,
    required this.list,
  });

  final int activeIndex;
  final List list;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: list.length,
      effect: const JumpingDotEffect(
          dotHeight: 10.0, dotWidth: 10.0, activeDotColor: kPrimaryColor),
    );
  }
}
