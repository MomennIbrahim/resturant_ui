import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.onPressed, required this.style,
      });

  final String text;
  final Color textColor;
  final TextStyle style;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
              onPressed: () {
                onPressed();
              },
              child: Row(
                children: [
                  Text(
                    text,
                    style: style,
                  ),
                ],
              )),
    );
  }
}
