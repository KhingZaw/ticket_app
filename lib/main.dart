import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/app_routers.dart';
import 'package:ticket_app/bottom_navbar.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/hotel/hotel_detail.dart';
import 'package:ticket_app/screens/hotel/hotel_screen.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRouters.homePage: (context) => BottomNavbar(),
        AppRouters.allTickets: (context) => AllTickets(),
        AppRouters.ticketScreen: (context) => TicketScreen(),
        AppRouters.hotelScreen: (context) => HotelScreen(),
        AppRouters.hotelDetail: (context) => HotelDetail(),
      },
    );
  }
}
