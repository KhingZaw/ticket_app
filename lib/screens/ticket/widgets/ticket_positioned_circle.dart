import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_styles.dart';

class TicketPositionedCircle extends StatelessWidget {
  final bool? pos;
  const TicketPositionedCircle({super.key, this.pos});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: pos == null ? 20 : null,
      right: pos == null ? null : 20,
      top: 235,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: AppStyles.textColor)),
        child: CircleAvatar(
          maxRadius: 4,
          backgroundColor: AppStyles.textColor,
        ),
      ),
    );
  }
}
