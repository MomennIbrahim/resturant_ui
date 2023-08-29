import 'package:flutter/material.dart';
import 'package:resturant_ui_app/core/utils/constace.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = kPrimaryColor,
    this.icon,
    this.textColor = Colors.white,
    this.hasIcon = false,
  });

  final String text;
  final Function onPressed;
  Color backgroundColor;
  Color textColor;
  Widget? icon;
  final bool hasIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: SizedBox(
          width: double.maxFinite,
          height: 50.0,
          child: ElevatedButton(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            onPressed: () {
              onPressed();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
            ),
            child: hasIcon
                ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      icon!,
                      Text(
                        text,
                        style: TextStyle(color: textColor),
                      ),
                    ],
                  )
                : Text(
                    text,
                    style: TextStyle(color: textColor),
                  ),
          ),
        ),
      ),
    );
  }
}
