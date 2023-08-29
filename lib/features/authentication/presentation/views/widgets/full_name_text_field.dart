import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';

class FullNameTextField extends StatelessWidget {
  const FullNameTextField({super.key, required this.fullNameController});

  final TextEditingController fullNameController;

  @override
  Widget build(BuildContext context) {
    return  CustomTextFormField(
      controller: fullNameController,
      keyBoardTyp: TextInputType.name,
      context: context,
      text: 'Enter your full name',
      validateText: 'field is required',
      obscure: false,
    );
  }
}
