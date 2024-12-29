import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(right: 16),
      width: size.width * 0.6,
      height: 310,
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(
                  image: AssetImage("assets/images/${hotel['image']}"),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            hotel["place"],
            style: AppStyles.headLineStyle2.copyWith(color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            hotel["destination"],
            style: AppStyles.headLineStyle3
                .copyWith(color: const Color.fromARGB(255, 233, 232, 232)),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "\$${hotel["price"]}/night",
            style: AppStyles.headLineStyle1.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
