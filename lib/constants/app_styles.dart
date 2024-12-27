import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color.fromARGB(255, 53, 53, 53);
  static Color bgColor = const Color.fromARGB(255, 231, 236, 247);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);

  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle4 = const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
  );
}
