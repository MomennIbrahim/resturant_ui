import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resturant_ui_app/core/utils/constace.dart';
import 'package:resturant_ui_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/widgets/search_text_field.dart';

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
  int activeIndex=0;
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const CustomAppBar(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48.0),
          child: SearchTextFormField(
              controller: searchController,
              keyBoardTyp: TextInputType.text,
              text: 'Search',
              icon: const Padding(
                padding: EdgeInsets.only(left: 27.0, right: 6.0),
                child: Icon(FontAwesomeIcons.magnifyingGlass, size: 16.0),
              ),
              validateText: '',
              obscure: false),
        ),
        const SizedBox(
          height: 28.0,
        ),
        CarouselSlider.builder(
            options: CarouselOptions(
              height: 160.0,
              autoPlay: true,
              initialPage: 0,
              // pageSnapping: false,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              reverse: false,
              autoPlayInterval: const Duration(seconds: 2),
            onPageChanged: (index,reason)=>   setState(() => activeIndex = index)
            ),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Image(image: AssetImage(list[index].toString()));
            }),

        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: list.length,
          effect: const JumpingDotEffect(
            dotHeight: 10.0,
            dotWidth: 10.0,
            activeDotColor: kPrimaryColor
          ),
        ),
      ],
    );

  }
}
