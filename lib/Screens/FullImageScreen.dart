import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:flutter/material.dart';

class FullImageScreen extends StatefulWidget {
  final ImageList;
  final img;
  FullImageScreen({this.ImageList, this.img});

  @override
  _FullImageScreenState createState() => _FullImageScreenState();
}

class _FullImageScreenState extends State<FullImageScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(bottom: 110),
            child: PageView.builder(
              itemCount: widget.ImageList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Image.asset(
                    "${widget.ImageList[index]}",
                    fit: BoxFit.fill,
                  ),
                );
              },
            ),
          ),
          height: height / 1.4,
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.42, left: 130),
          child: Container(
            child: ListView.builder(
              itemCount: widget.ImageList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Text("Data"),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red),
                  height: 20,
                  width: 20,
                );
              },
            ),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.9),
                borderRadius: BorderRadius.circular(8)),
            height: 30,
            width: 100,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 50, left: 30),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    AppText(
                      "Jacinthe Smitham, 22",
                      color: Appcolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Regular",
                    ),
                    Spacer(),
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    AppText(
                      "19 MILES",
                      color: Colors.grey,
                      fontFamily: "Regular",
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: AppText(
                    "UI/UX Designer",
                    color: Colors.grey,
                    fontFamily: "Regular",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                AppText(
                  "About",
                  color: Appcolor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Regular",
                ),
                SizedBox(
                  height: 10,
                ),
                AppText(
                  "Lorem Ipsum Dolor Sit Amet, Consetetur sedipscing Elitr, sed\nDiam Nonumy Eirmod Tempor Invidunt Ut Labore Et Dolore\nMagna Aliquyam Erat, sed Dima Voluptua. At Vero Eos Et\nAccusam Et Justo Duo Dolores Et Ea Rebum.",
                  color: Colors.grey,
                  fontSize: 12,
                  fontFamily: "Regular2",
                ),
                SizedBox(
                  height: 20,
                ),
                AppText(
                  "My Anthem",
                  color: Appcolor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Regular",
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        '$IMG_URL/images (4).jpeg',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText("Petit Biscuit"),
                        SizedBox(
                          height: 5,
                        ),
                        AppText(
                          "Waterfall",
                          color: Colors.grey,
                          fontSize: 10,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Image.asset(
                        "$ICON_URL/NoPath - Copy.png",
                        scale: 10,
                      ),
                    )
                  ],
                )
              ],
            ),
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            height: height / 2,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          ),
        )
      ],
    ));
  }
}
