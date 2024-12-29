import 'package:flutter/material.dart';

class AppTicketTap extends StatelessWidget {
  final String firstTap;
  final String secondTap;
  const AppTicketTap(
      {super.key, required this.firstTap, required this.secondTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.transparent),
        color: const Color(0xFFF4F6FD),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          AppTap(
            tapString: firstTap,
          ),
          AppTap(
            tapString: secondTap,
            tapBorder: false,
            tapColor: false,
          ),
        ],
      ),
    );
  }
}

class AppTap extends StatelessWidget {
  final String tapString;
  final bool tapBorder;
  final bool tapColor;
  const AppTap(
      {super.key,
      this.tapBorder = true,
      required this.tapString,
      this.tapColor = true});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: tapColor == true ? Colors.white : Colors.transparent,
          borderRadius: tapBorder == true
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      width: size.width * .44,
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Center(child: Text(tapString)),
    );
  }
}
