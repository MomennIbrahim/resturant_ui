import 'package:flutter/material.dart';

import '../../../../../core/utils/constace.dart';
import '../../../../../core/utils/styles.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Text(
            'See All',
            style: Styles.style12.copyWith(color: kSecondColor),
          ),
          const SizedBox(
            width: 6.0,
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15.0,
            color: kSecondColor,
          )
        ],
      ),
    );
  }
}
