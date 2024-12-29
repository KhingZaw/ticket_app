import 'package:flutter/material.dart';
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
                  .map((e) => TicketView(
                        ticket: e,
                        wholeScreen: true,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
