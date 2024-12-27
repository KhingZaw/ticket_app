import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_styles.dart';
import 'package:ticket_app/constants/media.dart';
import 'package:ticket_app/data/all_json.dart';
import 'package:ticket_app/widgets/app_double_text.dart';
import 'package:ticket_app/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
          padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Good morning"),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage(Media.log),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  width: double.infinity,
                  height: 45,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 20,
                        color: Color.fromARGB(255, 158, 158, 3),
                      ),
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //AppDoubleText
                const AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: ticketList
                            .take(3)
                            .map((e) => TicketView(
                                  ticket: e,
                                ))
                            .toList()))
              ],
            ),
          ]),
    );
  }
}
