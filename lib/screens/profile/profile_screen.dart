import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_styles.dart';
import 'package:ticket_app/constants/media.dart';
import 'package:ticket_app/reusable_widgets/text_style_fourth.dart';
import 'package:ticket_app/reusable_widgets/text_style_third.dart';
import 'package:ticket_app/screens/profile/widgets/miles_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, this.func});

  final VoidCallback? func;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 86,
                height: 86,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage(Media.log),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: AppStyles.headLineStyle1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "New-York",
                    style: AppStyles.headLineStyle4.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppStyles.profileBoxColor,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyles.profileTextColor,
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Premium status",
                          style: AppStyles.headLineStyle3.copyWith(
                            color: AppStyles.profileTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              InkWell(
                onTap: func,
                child: Text("Edit",
                    style: AppStyles.headLineStyle3
                        .copyWith(color: AppStyles.primaryColor)),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 8,
          ),
          Stack(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppStyles.primaryColor,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyles.profileTextColor,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextStyleThird(
                          text: "You\'v got a new award",
                          isColor: null,
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -40,
                top: -40,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Accumulated miles",
            style: AppStyles.headLineStyle1,
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  child: Text(
                    "192802",
                    style: AppStyles.headLineStyle1.copyWith(fontSize: 32),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text(
                        "Miles accrued",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.grey.shade500),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        "11 june 2022",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.grey.shade500),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 10,
                ),
                const MilesWidget(
                  miles: "23 042",
                  receiveText: "Airline CO",
                ),
                const SizedBox(
                  height: 25,
                ),
                const MilesWidget(
                  miles: "24",
                  receiveText: "McDoanal's",
                ),
                const SizedBox(
                  height: 25,
                ),
                const MilesWidget(
                  miles: "52 340",
                  receiveText: "DBestech",
                ),
                const SizedBox(
                  height: 25,
                ),
                Text("How to get more miles",
                    style: AppStyles.textStyle
                        .copyWith(color: AppStyles.primaryColor)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
