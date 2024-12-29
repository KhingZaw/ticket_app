import 'package:barcode/barcode.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_styles.dart';
import 'package:ticket_app/constants/media.dart';
import 'package:ticket_app/data/all_json.dart';
import 'package:ticket_app/reusable_widgets/app_layout_builder.dart';
import 'package:ticket_app/reusable_widgets/app_ticket_tap.dart';
import 'package:ticket_app/reusable_widgets/text_style_fourth.dart';
import 'package:ticket_app/reusable_widgets/text_style_third.dart';
import 'package:ticket_app/screens/home/widgets/ticket_view.dart';
import 'package:ticket_app/screens/ticket/widgets/ticket_positioned_circle.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    if (args != null) {
      ticketIndex = args["index"];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: const Text('Tickets'),
        centerTitle: true,
        backgroundColor: AppStyles.bgColor,
      ),
      body: Stack(
        children: [
          ListView(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              children: [
                const AppTicketTap(
                  firstTap: 'Upcoming',
                  secondTap: 'Previous',
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(
                    ticket: ticketList[ticketIndex],
                    isColor: true,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15.5),
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 17, vertical: 20),
                  color: AppStyles.ticketWhite,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: TextStyleThird(
                              text: "Flutter DB",
                              isColor: true,
                            ),
                          ),
                          SizedBox(
                            child: TextStyleThird(
                              text: "5221 36869",
                              textAlign: false,
                              isColor: true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: TextStyleFourth(
                              text: "Passenger",
                              isColor: true,
                            ),
                          ),
                          SizedBox(
                            child: TextStyleFourth(
                              text: "passport",
                              textAlign: false,
                              isColor: true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                        child: Expanded(
                          child: AppLayoutBuilder(
                            randomDivider: 16,
                            width: 10,
                            isColor: true,
                          ),
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: TextStyleThird(
                              text: "364738 28274478",
                              isColor: true,
                            ),
                          ),
                          SizedBox(
                            child: TextStyleThird(
                              text: "B2SG28",
                              textAlign: false,
                              isColor: true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: TextStyleFourth(
                              text: "Number of E-ticket",
                              isColor: true,
                            ),
                          ),
                          SizedBox(
                            child: TextStyleFourth(
                              text: "Booking code",
                              textAlign: false,
                              isColor: true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                        child: Expanded(
                          child: AppLayoutBuilder(
                            randomDivider: 16,
                            width: 10,
                            isColor: true,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Image.asset(Media.visa, scale: 5),
                                const TextStyleThird(
                                  text: " *** 2462",
                                  isColor: true,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            child: TextStyleThird(
                              text: "\$249.99",
                              textAlign: false,
                              isColor: true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: TextStyleFourth(
                              text: "Payment method",
                              isColor: true,
                            ),
                          ),
                          SizedBox(
                            child: TextStyleFourth(
                              text: "Price",
                              textAlign: false,
                              isColor: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 2.5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  margin: const EdgeInsets.symmetric(horizontal: 15.5),
                  decoration: BoxDecoration(
                    color: AppStyles.ticketWhite,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(), // Choose your barcode type
                      data: 'http://www.khingzaws.com',
                      drawText: false,
                      color: AppStyles.textColor,
                      height: 80, // The data to encode
                      width: double.infinity,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(
                    ticket: ticketList[ticketIndex],
                  ),
                ),
              ]),
          const TicketPositionedCircle(),
          const TicketPositionedCircle(
            pos: true,
          ),
        ],
      ),
    );
  }
}
