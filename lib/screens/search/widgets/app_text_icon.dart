import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  const AppTextIcon({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Icon(
              icon,
              color: const Color(0xFFBFC2DF),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(text, style: AppStyles.textStyle),
          ],
        ));
  }
}
