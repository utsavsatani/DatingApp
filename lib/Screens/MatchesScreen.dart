import 'package:dating/Screens/FullImageScreen.dart';
import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:flutter/material.dart';

class MatchesScreen extends StatefulWidget {
  @override
  _MatchesScreenState createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  List imageList = [
    "assets/images/images (1).jpeg",
    "assets/images/images (2).jpeg",
    "assets/images/images (3).jpeg",
    "assets/images/images (4).jpeg",
    "assets/images/images (5).jpeg",
    "assets/images/images (6).jpeg",
    "assets/images/images (7).jpeg",
    "assets/images/images (8).jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        "Matches",
                        color: Appcolor,
                        fontSize: 20,
                        fontFamily: "Regular1",
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    "$ICON_URL/Group 66458.png",
                    scale: 7,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "$ICON_URL/Filter.png",
                    scale: 7,
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: imageList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 240,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  padding: EdgeInsets.only(top: 20, left: 21, right: 21),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FullImageScreen(
                                ImageList: imageList,
                                img: imageList[index],
                              ),
                            ));
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "${imageList[index]}",
                              )),
                          Padding(
                            padding: EdgeInsets.only(top: 190, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  "Woodrow Stracke,22",
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "$ICON_URL/Icon feather-map-pin.png",
                                      scale: 25,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    AppText(
                                      "4 Miles",
                                      color: Colors.white,
                                      fontSize: 8,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.centerRight,
            colors: [Color(0xffFAECFA), Colors.white],
          ),
        ),
      ),
    );
  }
}
