import 'package:flutter/material.dart';
import 'package:resturant_ui_app/features/authentication/presentation/views/widgets/tab_bar_item.dart';
import 'package:resturant_ui_app/features/authentication/presentation/views/widgets/tab_bar_view_items.dart';

class BottomSheetItem extends StatelessWidget {
  const BottomSheetItem({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers:[
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 24.0,
                ),
                Container(
                  width: 48.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      color: const Color(0xffD2D4D8)),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                const TabBarItems(),
              ],
            ),
          ),
          const SliverFillRemaining(
            child:  TabBarViewItems(),
          )
        ] ,
      ),
    );
  }
}
