import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final bool textAlign;
  const TextStyleFourth({
    super.key,
    required this.text,
    this.textAlign = true,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign == true ? TextAlign.start : TextAlign.end,
      style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
    );
  }
}
