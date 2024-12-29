import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_styles.dart';
import 'package:ticket_app/constants/media.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          width: size.width * .43,
          height: size.height * .52,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200, blurRadius: 1, spreadRadius: 2)
              ]),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                      image: AssetImage(Media.planSide), fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "20% discount on the early booking  of this flight. Don't miss",
                style: AppStyles.headLineStyle1,
              )
            ],
          ),
        ),
        Column(
          children: [
            Stack(children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                width: size.width * .44,
                height: size.height * .25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xFF3AB8B8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Discount\nfor survey",
                      style: AppStyles.headLineStyle1
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Take the survey about our service and get discount",
                        style: AppStyles.headLineStyle2
                            .copyWith(color: Colors.white))
                  ],
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: const Color(0xFF189999),
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              width: size.width * .44,
              height: size.height * .25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18), color: Colors.red),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Take Love",
                    style:
                        AppStyles.headLineStyle1.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("😍🥰😘", style: TextStyle(fontSize: 30))
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
