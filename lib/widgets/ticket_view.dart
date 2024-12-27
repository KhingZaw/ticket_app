import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_styles.dart';
import 'package:ticket_app/widgets/app_layout_builder.dart';
import 'package:ticket_app/widgets/big_circle.dart';
import 'package:ticket_app/widgets/big_dot.dart';
import 'package:ticket_app/widgets/text_style_fourth.dart';
import 'package:ticket_app/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    children: [
                      TextStyleThird(
                        text: ticket["from"]["code"],
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilder(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.57,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket["to"]["code"],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  //show departure and destination names with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["from"]["name"],
                        ),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket["flying_time"]),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["to"]["name"],
                          textAlign: false,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //circle and dots
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilder(
                    randomDivider: 16,
                    width: 6,
                  )),
                  BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),
            //orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                        child: TextStyleThird(
                          text: ticket["date"],
                        ),
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket["departure"],
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 70,
                        child: TextStyleThird(
                          text: ticket["number"].toString(),
                          textAlign: false,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  //show departure and destination names with time
                  Row(
                    children: [
                      const SizedBox(
                          width: 70, child: TextStyleFourth(text: "Date")),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: "Departure time"),
                      Expanded(child: Container()),
                      const SizedBox(
                          width: 70,
                          child: TextStyleFourth(
                            text: "Number",
                            textAlign: false,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
