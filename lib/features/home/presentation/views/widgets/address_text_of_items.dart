import 'package:flutter/material.dart';
import 'package:resturant_ui_app/features/home/presentation/views/widgets/see_all_button.dart';
import '../../../../../core/utils/styles.dart';

class AddressTitleOfItems extends StatelessWidget {
  const AddressTitleOfItems({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Styles.style16.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5.0,),
            Text(subTitle,style: Styles.style12,),
          ],
        ),
        const Spacer(),
        const SeeAllButton(),
      ],
    );
  }
}
