import 'package:flutter/material.dart';
import '../utils/constace.dart';
import '../utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.onPressed,
      });

  final String text;
  final Color textColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
              onPressed: () {
                onPressed();
              },
              child: Text(
                text,
                style: Styles.style16
                    .copyWith(color: textColor, fontWeight: FontWeight.w600),
              )),
    );
  }
}
