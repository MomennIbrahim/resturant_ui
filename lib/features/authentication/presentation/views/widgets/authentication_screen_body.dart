import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'bottom_sheet_item.dart';

class AuthenticationScreenBody extends StatelessWidget {
  const AuthenticationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4.5,
            ),
            SvgPicture.asset(
              'assets/images/Order Success.svg',
            ),
            const SizedBox(
              height: 55.0,
            ),
            const Text(
              'Welcome',
              style: Styles.style24,
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: Text(
                'Before enjoying Foodmedia services Please register first',
                textAlign: TextAlign.center,
                style: Styles.style14,
              ),
            ),
            const SizedBox(
              height: 95.0,
            ),
            CustomElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(36.0),
                            topLeft: Radius.circular(36.0)),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                            height: MediaQuery.of(context).size.height / 1.4,
                            child: const BottomSheetItem(isLogin: true,));
                      });
                },
                text: 'Create Account'),
            const SizedBox(
              height: 16.0,
            ),
            CustomElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(36.0),
                            topLeft: Radius.circular(36.0)),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                            height: MediaQuery.of(context).size.height / 1.4,
                            child: const BottomSheetItem(isLogin: false,));
                      });
                },
                text: 'Login',
                textColor: const Color(0xff10B981),
                backgroundColor: const Color(0xffD1FAE5)),
            const SizedBox(
              height: 16.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0),
              child: Text(
                'By logging in or registering, you have agreed to the Terms and Conditions and Privacy Policy.',
                style: Styles.style12,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 11,
            )
          ],
        ),
      ),
    );
  }
}
