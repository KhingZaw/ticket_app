import 'package:flutter/material.dart';
import 'package:ticket_app/app_routers.dart';
import 'package:ticket_app/data/all_json.dart';
import 'package:ticket_app/screens/home/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((e) => GestureDetector(
                        onTap: () {
                          var index = ticketList.indexOf(e);

                          Navigator.pushNamed(context, AppRouters.ticketScreen,
                              arguments: {"index": index});
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: TicketView(
                            ticket: e,
                            wholeScreen: true,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
