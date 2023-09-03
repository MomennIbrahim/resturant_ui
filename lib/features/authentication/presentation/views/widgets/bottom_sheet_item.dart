import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resturant_ui_app/features/authentication/presentation/views/widgets/tab_bar_item.dart';
import 'package:resturant_ui_app/features/authentication/presentation/views/widgets/tab_bar_view_items.dart';

class BottomSheetItem extends StatelessWidget {
  const BottomSheetItem({super.key, required this.isLogin});

  final bool isLogin;

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
                InkWell(
                  onTap: (){
                    GoRouter.of(context).pop();
                  },
                  child: SizedBox(
                    width: double.infinity,
                    height: 25.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 170.0,vertical: 9.0),
                      child: Container(
                        width: 48.0,
                        height: 6.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xffD2D4D8)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TabBarItems(isLogin: isLogin),
              ],
            ),
          ),
           SliverFillRemaining(
            child:  TabBarViewItems(isLogin: isLogin),
          )
        ] ,
      ),
    );
  }
}
