import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resturant_ui_app/core/utils/app_router.dart';
import 'package:resturant_ui_app/core/widgets/custom_button.dart';
import 'package:resturant_ui_app/core/widgets/text_over_text_form_field.dart';
import 'package:resturant_ui_app/features/authentication/presentation/views/widgets/email_text_field.dart';
import 'package:resturant_ui_app/features/authentication/presentation/views/widgets/full_name_text_field.dart';
import 'package:resturant_ui_app/features/authentication/presentation/views/widgets/password_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  var fullNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 36.0,
            ),
            const TextOverTextFormField(text: 'Full Name'),
            const SizedBox(
              height: 6.0,
            ),
            FullNameTextField(fullNameController: fullNameController),
            const SizedBox(
              height: 8.0,
            ),
            const TextOverTextFormField(text: 'Email address'),
            const SizedBox(
              height: 6.0,
            ),
            EmailTextField(emailController: emailController),
            const SizedBox(
              height: 8.0,
            ),
            const TextOverTextFormField(text: 'Password'),
            const SizedBox(
              height: 6.0,
            ),
            PasswordTextField(passwordController: passwordController),
            const SizedBox(
              height: 34.0,
            ),
            CustomElevatedButton(
              text: 'Registration',
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kLayoutScreen);
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            CustomElevatedButton(
                text: 'Sign up with Google',
                onPressed: () {},
                backgroundColor: const Color(0xffF4F4F4),
                textColor: Colors.black,
                hasIcon: true,
                icon: SvgPicture.asset(
                  'assets/images/ic_google.svg',
                )),
          ],
        ),
      ),
    );
  }
}
