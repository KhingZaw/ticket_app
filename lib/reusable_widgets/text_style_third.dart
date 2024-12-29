import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool textAlign;
  final bool? isColor;
  const TextStyleThird({
    super.key,
    required this.text,
    this.textAlign = true,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign == true ? TextAlign.start : TextAlign.end,
      style: isColor == null
          ? AppStyles.headLineStyle3.copyWith(color: Colors.white)
          : AppStyles.headLineStyle3,
    );
  }
}
