import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_styles.dart';
import 'package:ticket_app/data/all_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    if (args != null) {
      index = args["index"];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyles.primaryColor,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(
              //   hotelList[index]["place"],
              //   style: const TextStyle(color: Colors.white),
              // ),
              centerTitle: true,
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${hotelList[index]["image"]}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        hotelList[index]["place"],
                        style: TextStyle(
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  blurRadius: 10.0,
                                  color: AppStyles.primaryColor,
                                  offset: const Offset(2.0, 2.0)),
                            ],
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ExpandedTextWideget(
                    text: hotelList[index]["detail"],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "More Images",
                    style: AppStyles.headLineStyle2,
                  ),
                ),
                SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: hotelList[index]["images"].length,
                      itemBuilder: (context, imageIndex) {
                        return Container(
                          margin: const EdgeInsets.all(16),
                          color: Colors.red,
                          child: Image.asset(
                              "assets/images/${hotelList[index]["images"][imageIndex]}"),
                        );
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ExpandedTextWideget extends StatefulWidget {
  const ExpandedTextWideget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<ExpandedTextWideget> createState() => _ExpandedTextWidegetState();
}

class _ExpandedTextWidegetState extends State<ExpandedTextWideget> {
  bool isExpanded = false;
  toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    var textWidget = Text(
      widget.text,
      maxLines: isExpanded ? null : 3,
      overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () {
            toggleExpansion();
          },
          child: Text(
            isExpanded ? 'Less' : 'More',
            style: AppStyles.textStyle.copyWith(
              color: AppStyles.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
