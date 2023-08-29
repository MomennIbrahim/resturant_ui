import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resturant_ui_app/core/utils/app_router.dart';
import 'package:resturant_ui_app/core/utils/constace.dart';
import 'package:resturant_ui_app/core/utils/styles.dart';
import 'package:resturant_ui_app/features/onBoarding/data/on_boarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoaringScreen extends StatefulWidget {
  const OnBoaringScreen({super.key});

  @override
  State<OnBoaringScreen> createState() => _OnBoaringScreenState();
}

class _OnBoaringScreenState extends State<OnBoaringScreen> {
  var boardController = PageController();

  List<OnBoarindgModel> onBoardingList = [
    OnBoarindgModel(
      title: 'Nearby restaurants',
      image: 'assets/images/Tracking & Maps.svg',
      subtitle:
          'You don\'t have to go far to find a good restaurant, we have provided all the restaurants that is near you',
    ),
    OnBoarindgModel(
      title: 'Select the Favorites Menu',
      subtitle:
          'Now eat well, don\'t leave the house,You can choose your favorite food only with one click',
      image: 'assets/images/Order illustration.svg',
    ),
    OnBoarindgModel(
      title: 'Good food at a cheap price',
      image: 'assets/images/Safe Food.svg',
      subtitle: 'You can eat at expensive restaurants with affordable price',
    ),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: boardController,
            onPageChanged: (index) {
              if (index == onBoardingList.length - 1) {
                setState(() {
                  isLast = true;
                  print(isLast);
                });
              } else {
                setState(() {
                  isLast = false;
                  print(isLast);
                });
              }
            },
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return buildOnBoardingItem(
                  context: context, model: onBoardingList[index]);
            },
            itemCount: onBoardingList.length,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kAuthenticationScreen);
                  },
                  child: const Text(
                    'Skip',
                    style: Styles.style16,
                  )),
              SmoothPageIndicator(
                controller: boardController,
                count: onBoardingList.length,
                axisDirection: Axis.horizontal,
                effect: const JumpingDotEffect(
                    spacing: 8.0,
                    radius: 8.0,
                    dotWidth: 10.0,
                    dotHeight: 10.0,
                    paintStyle: PaintingStyle.fill,
                    strokeWidth: 1.5,
                    dotColor: Color(0xffE6E6E6),
                    activeDotColor: kPrimaryColor),
              ),
              IconButton(
                  onPressed: () {
                    if (isLast) {
                      GoRouter.of(context)
                          .push(AppRouter.kAuthenticationScreen);
                    } else {
                      boardController.nextPage(
                          duration: const Duration(milliseconds: 750),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: kPrimaryColor,
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: 47.0,
        ),
      ],
    ));
  }

  Widget buildOnBoardingItem(
      {required BuildContext context, required OnBoarindgModel model}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 3.5,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 3.5,
          child: SvgPicture.asset(
            model.image,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          height: 84.5,
        ),
        Text(
          model.title,
          style: Styles.style24,
        ),
        const SizedBox(
          height: 16.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: Text(
            model.subtitle,
            style: Styles.style12,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
