import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      keyBoardTyp: TextInputType.visiblePassword,
      context: context,
      text: '**** **** ****',
      validateText: 'field is required',
      obscure: true,
    );
  }
}
