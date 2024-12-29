import 'package:flutter/material.dart';
import 'package:ticket_app/app_routers.dart';
import 'package:ticket_app/bottom_navbar.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: TicketApp(),
  ));
}

class TicketApp extends StatelessWidget {
  const TicketApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRouters.homePage: (context) => const BottomNavbar(),
        AppRouters.allTickets: (context) => const AllTickets(),
        AppRouters.ticketScreen: (context) => const TicketScreen(),
      },
    );
  }
}
