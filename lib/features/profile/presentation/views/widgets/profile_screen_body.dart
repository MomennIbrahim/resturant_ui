import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resturant_ui_app/core/utils/constace.dart';
import 'package:resturant_ui_app/core/utils/styles.dart';
import 'package:resturant_ui_app/core/widgets/custom_button.dart';

class ProfileScreenBody extends StatelessWidget {
   const ProfileScreenBody({super.key});

 final  List<String> textSetting = const[
    'Language',
    'Feedback',
    'Rate us',
    'New Version',
  ];

 final List icons= const[
    Icon(Icons.language,size: 20.0,),
    Icon(FontAwesomeIcons.rocketchat,size: 20.0,),
    Icon(FontAwesomeIcons.star,size: 20.0,),
    Icon(Icons.update,size: 20.0,),
 ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 61.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SizedBox(
            width: double.maxFinite,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11.0)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 18.0,
                      backgroundColor: Colors.white38,
                      foregroundImage: NetworkImage(
                          'https://image.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg'),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sadek Hossen',
                          style: Styles.style16
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'sadekbranding@gmail.com',
                          style: Styles.style10
                              .copyWith(color: const Color(0xff6B7280)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Colors.grey[100],
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                        CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.red,
                          child: Text(
                            '3',
                            style: Styles.style10.copyWith(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 35.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SizedBox(
            width: double.maxFinite,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11.0)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: 7.0,
                    ),
                    Text(
                      'Account setting',
                      style: Styles.style18,
                    ),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.penToSquare,
                      size: 18.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SizedBox(
            height: 220.0,
            width: double.maxFinite,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11.0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ListView.separated(
                  itemBuilder: (context, index) => Row(
                    children: [
                       icons[index],
                      const SizedBox(
                        width: 24.0,
                      ),
                      Text(
                        textSetting[index],
                        style: Styles.style18,
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 16.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  itemCount: 4,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    height: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 40.0,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: CustomElevatedButton(text: 'Logut', onPressed: (){},backgroundColor: const Color(0xffEB4646)),
        ),
      ],
    );
  }
}
