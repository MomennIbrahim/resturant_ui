import 'package:flutter/material.dart';

class CustomSearchTextFormField extends StatelessWidget {
  const CustomSearchTextFormField(
      {super.key,
        required this.controller,
        required this.keyBoardTyp,
        required this.text,
        required this.validateText,
        this.icon,
        this.onSubmitted,
        this.widget,
        required this.obscure,
        this.suffixIcon});

  final TextEditingController controller;
  final TextInputType keyBoardTyp;
  final String text;
  final Widget? icon;
  final Function? onSubmitted;
  final String validateText;
  final Widget? widget;
  final IconButton? suffixIcon;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        keyboardType: keyBoardTyp,
        decoration: InputDecoration(
          enabled: true,
            contentPadding: const EdgeInsets.all(10.0),
            border: outLineInputBorder(),
            enabledBorder: outLineInputBorder(),
            focusedBorder: outLineInputBorder(),
            hintText: text,
            hintStyle: const TextStyle(color: Color(0xff9CA3AF)),
            filled: true,
            fillColor: const Color(0xffE6E7E9),
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
      ),
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(12.0));
  }
}