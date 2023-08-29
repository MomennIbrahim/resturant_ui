import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
        required this.controller,
        required this.keyBoardTyp,
        required this.context,
        required this.text,
        required this.validateText,
        this.icon,
        this.onSubmitted,
        this.widget,
        required this.obscure,
        this.suffixIcon});

  final TextEditingController controller;
  final TextInputType keyBoardTyp;
  final BuildContext context;
  final String text;
  final Icon? icon;
  final Function? onSubmitted;
  final String validateText;
  final Widget? widget;
  final IconButton? suffixIcon;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      keyboardType: keyBoardTyp,
      decoration: InputDecoration(
          border: outLineInputBorder(),
          enabledBorder: outLineInputBorder(),
          focusedBorder: outLineInputBorder(),
          hintText: text,
          hintStyle: const TextStyle(color: Color(0xff9CA3AF)),
          filled: true,
          fillColor: const Color(0xffF6F6F6),
          prefixIcon: icon,
          prefix: widget,
          suffixIcon: suffixIcon,
          iconColor: Colors.black),
      onFieldSubmitted: (String value) {
        // onSubmitted!(value);
      },
      validator: (value) {
        if (value!.isEmpty) {
          return validateText;
        }
        return null;
      },
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xffBEC5D1),
        ),
        borderRadius: BorderRadius.circular(12.0));
  }
}