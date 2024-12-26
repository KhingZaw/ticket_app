import 'package:flutter/material.dart';
import 'package:ticket_app/bottom_navbar.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavbar(),
    );
  }
}
