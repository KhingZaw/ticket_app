import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_styles.dart';

class MilesWidget extends StatelessWidget {
  final dynamic miles;
  final String receiveText;
  const MilesWidget({
    super.key,
    required this.miles,
    required this.receiveText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Text(
                miles.toString(),
                style: AppStyles.headLineStyle2,
              ),
            ),
            SizedBox(
              child: Text(
                receiveText,
                style: AppStyles.headLineStyle2,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Text(
                "Miles",
                style: AppStyles.headLineStyle3
                    .copyWith(color: Colors.grey.shade500),
              ),
            ),
            SizedBox(
              child: Text(
                "Received from",
                style: AppStyles.headLineStyle3
                    .copyWith(color: Colors.grey.shade500),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
