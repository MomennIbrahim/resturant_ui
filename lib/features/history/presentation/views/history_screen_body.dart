import 'package:flutter/material.dart';
import 'package:resturant_ui_app/core/utils/constace.dart';
import 'package:resturant_ui_app/core/widgets/custom_button.dart';
import 'package:resturant_ui_app/features/home/presentation/views/widgets/explore_restaurant_item.dart';
import 'package:resturant_ui_app/features/home/presentation/views/widgets/list_view_explore_item.dart';

class HistoryScreenBody extends StatelessWidget {
  const HistoryScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          toolbarHeight: 67.0,
          backgroundColor: kPrimaryColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0))),
          title: const Text('Booking History'),
          centerTitle: true,
        ),

        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: ListViewExploreItem(
                widget: ExploreRestaurantItem(textOfButton: 'Check')),
          ),
        ),
        const SizedBox(height: 12.0,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 47.5),
          child: CustomElevatedButton(
            text: 'Booking more',
            backgroundColor: Colors.white,
            onPressed: () {},
            hasIcon: true,
            textColor: kSecondColor,
            icon: const Icon(Icons.add,color: kSecondColor),
          ),
        ),
        const SizedBox(height: 30.0,),
      ],
    );
  }
}
