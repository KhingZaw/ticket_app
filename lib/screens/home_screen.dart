import 'package:flutter/material.dart';
import 'package:ticket_app/constants/media.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        children: [
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good Morning"),
                    Text(
                      "Book Tickets",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: AssetImage(Media.logImage),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              width: double.infinity,
              height: 40,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white),
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
            )
          ]),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Upcoming Flights",
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("View all"),
                    )
                  ],
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
