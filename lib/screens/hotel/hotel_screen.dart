import 'package:flutter/material.dart';
import 'package:ticket_app/app_routers.dart';
import 'package:ticket_app/constants/app_styles.dart';
import 'package:ticket_app/data/all_json.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text(
          "All Hotels",
          style: AppStyles.headLineStyle1,
        ),
        centerTitle: true,
        backgroundColor: AppStyles.bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8),
            itemCount: hotelList.length,
            itemBuilder: (context, index) {
              var e = hotelList[index];
              return HotelGridView(hotel: e, index: index);
            }),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final int index;
  const HotelGridView({super.key, required this.hotel, required this.index});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRouters.hotelDetail,
            arguments: {"index": index});
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(right: 8),
        //width: size.width * 0.6,
        //height: 200,
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(24)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/${hotel['image']}"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              hotel["place"],
              style: AppStyles.headLineStyle3.copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotel["destination"],
                  style: AppStyles.headLineStyle2.copyWith(
                      color: const Color.fromARGB(255, 233, 232, 232)),
                ),
                Text(
                  "\$${hotel["price"]}/night",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.grey),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
