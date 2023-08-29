import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key, required this.emailController});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      keyBoardTyp: TextInputType.emailAddress,
      context: context,
      text: 'Eg namaemail@emailkamu.com',
      validateText: 'field is required',
      obscure: false,
    );
  }
}
