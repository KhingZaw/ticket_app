import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_styles.dart';
import 'package:ticket_app/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({
    super.key,
    required this.bigText,
    required this.smallText,
  });
  final String bigText;
  final String smallText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const AllTickets()),
            );
          },
          child: Text(smallText,
              style: AppStyles.headLineStyle3
                  .copyWith(color: AppStyles.primaryColor)),
        )
      ],
    );
  }
}
