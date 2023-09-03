import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resturant_ui_app/core/utils/app_router.dart';
import 'package:resturant_ui_app/core/utils/constace.dart';
import 'package:resturant_ui_app/core/utils/styles.dart';
import 'package:resturant_ui_app/core/widgets/custom_button.dart';
import 'package:resturant_ui_app/core/widgets/custom_text_button.dart';
import 'package:resturant_ui_app/core/widgets/text_over_text_form_field.dart';
import 'package:resturant_ui_app/features/authentication/presentation/views/widgets/email_text_field.dart';
import 'package:resturant_ui_app/features/authentication/presentation/views/widgets/password_text_field.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30,),
          const TextOverTextFormField(text: "Email address"),
          const SizedBox(height: 4,),
          EmailTextField(emailController: email),
          const SizedBox(height: 8,),
          const TextOverTextFormField(text: "Password"),
          const SizedBox(height: 4,),
          PasswordTextField(passwordController: password),
          Align(
            alignment: Alignment.centerRight,
            child: CustomTextButton(
              text: "Forget Password?", 
              textColor: kPrimaryColor, 
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPasswordScreen(),));
              }, style: Styles.style12,
            ),
          ),
          const SizedBox(height: 15,),
          CustomElevatedButton(
            text: "Login", 
            onPressed: (){
              GoRouter.of(context).push(AppRouter.kLayoutScreen);
            }
          ),
          const SizedBox(height: 25,),
          CustomElevatedButton(
                text: 'Login with Google',
                onPressed: () {},
                backgroundColor: const Color(0xffF4F4F4),
                textColor: Colors.black,
                hasIcon: true,
                icon: SvgPicture.asset(
                  'assets/images/ic_google.svg',
                )
            ),
        ],
      ),
    );
  }
}