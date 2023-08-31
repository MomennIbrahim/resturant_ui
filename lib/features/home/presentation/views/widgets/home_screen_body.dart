import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:resturant_ui_app/core/utils/styles.dart';
import 'package:resturant_ui_app/core/widgets/custom_button.dart';
import 'package:resturant_ui_app/features/home/presentation/views/widgets/address_text_of_items.dart';
import 'package:resturant_ui_app/features/home/presentation/views/widgets/custom_animated_smooth_indicator.dart';
import 'package:resturant_ui_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:resturant_ui_app/features/home/presentation/views/widgets/explore_restaurant_item.dart';
import 'package:resturant_ui_app/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:resturant_ui_app/features/home/presentation/views/widgets/today_new_arivable_item.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  List list = [
    'assets/images/Group 3115.png',
    'assets/images/Group 3119.png',
    'assets/images/Group 3115.png',
  ];
  int activeIndex = 0;
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            SearchTextField(searchController: searchController),
            const SizedBox(
              height: 28.0,
            ),
            CarouselSlider.builder(
                options: CarouselOptions(
                    height: 160.0,
                    autoPlay: true,
                    initialPage: 0,
                    // pageSnapping: false,
                    // viewportFraction: 1,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    reverse: false,
                    autoPlayInterval: const Duration(seconds: 2),
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index)),
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Image(image: AssetImage(list[index].toString()));
                }),
            Center(
                child: CustomAnimatedSmoothIndicator(
                    activeIndex: activeIndex, list: list)),
            const SizedBox(
              height: 36.0,
            ),
            const AddressTitleOfItems(
                title: 'Today New Arivable',
                subTitle: 'Best of the today food list update'),
            SizedBox(
              height: 200.0,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const TodayNewArivableItem(),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 5.0,
                ),
                itemCount: 10,
              ),
            ),
            const SizedBox(
              height: 36.0,
            ),
            const AddressTitleOfItems(
                title: 'Booking Restaurant',
                subTitle: 'Check your city Near by Restaurant'),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const ExploreRestaurantItem(),
              itemCount: 6,
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
