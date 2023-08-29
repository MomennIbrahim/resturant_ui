import 'package:flutter/material.dart';

import '../utils/styles.dart';

class TextOverTextFormField extends StatelessWidget {
  const TextOverTextFormField({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Text(
        text,
        style: Styles.style14.copyWith(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: const Color((0xff374151))),
      ),
    );
  }
}
