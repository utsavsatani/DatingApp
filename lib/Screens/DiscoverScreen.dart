import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:dating/Screens/BasicinfoScreen.dart';
import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:dating/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  List<SwipeItem> _swipeItems = [];
  MatchEngine? _matchEngine;
  List _imageList = [
    "assets/images/images (1).jpeg",
    "assets/images/images (2).jpeg",
    "assets/images/images (3).jpeg",
    "assets/images/images (4).jpeg",
    "assets/images/images (5).jpeg",
    "assets/images/images (6).jpeg",
    "assets/images/images (7).jpeg",
    "assets/images/images (8).jpeg"
  ];

  List iconlist = [
    "$ICON_URL/Path 199327.png",
    "$ICON_URL/Path 199328.png",
    "$ICON_URL/Group 66457.png",
  ];

  List textlist = ["Female", "Male", "Other"];

  int value = 0;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < _imageList.length; i++) {
      _swipeItems.add(SwipeItem(
        content: Content(image: _imageList[i]),
        likeAction: () {
          _matchEngine!.currentItem!.like();
        },
        nopeAction: () {
          _matchEngine!.currentItem!.nope();
        },
        superlikeAction: () {
          _matchEngine!.currentItem!.superLike();
        },
      ));
    }
    _matchEngine = MatchEngine(swipeItems: _swipeItems);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        "Discover",
                        color: Appcolor,
                        fontSize: 20,
                        fontFamily: "Regular1",
                        fontWeight: FontWeight.w400,
                      ),
                      AppText(
                        "Evatown, Andorra",
                        color: Colors.black87,
                        fontSize: 12,
                        fontFamily: "Regular1",
                        fontWeight: FontWeight.w400,
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
                  InkWell(
                    onTap: () {
                      showdailog();
                    },
                    child: Image.asset(
                      "$ICON_URL/Filter.png",
                      scale: 7,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: SwipeCards(
                matchEngine: _matchEngine!,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(_imageList[index]),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.32,
                      ),
                      child: Center(
                        child: Container(
                          child: BlurryContainer(
                            padding:
                                EdgeInsets.only(top: 10, left: 10, right: 10),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AppText(
                                      "Jecinthe Smitham, 22",
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Bold",
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        AppText(
                                          "Buckighamsfire, Michigan",
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Bold",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  height: 25,
                                  width: 25,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    size: 15,
                                  ),
                                )
                                // Image.asset("$ICON_URL/Right_arrow1.png")
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                            bgColor: Colors.grey,
                            height: height * 0.1,
                            width: width * 0.78,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white)),
                        ),
                      ),
                    )
                  ]);
                },
                upSwipeAllowed: true,
                onStackFinished: () {},
              ),
              height: height * 0.5,
              padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(bottom: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Likebuttom(
                  image: "$ICON_URL/Fill 4.png",
                  color: Color(0xff8D858C),
                  ontap: () {
                    _matchEngine!.currentItem!.nope();
                  },
                ),
                Likebuttom(
                  image: "$ICON_URL/Star.png",
                  color: Color(0xffE574E4).withOpacity(0.7),
                  ontap: () {
                    _matchEngine!.currentItem!.superLike();
                  },
                ),
                Likebuttom(
                  image: "$ICON_URL/Iconly-Bold-Heart.png",
                  color: Color(0xffAC8BAA),
                  ontap: () {
                    _matchEngine!.currentItem!.like();
                  },
                ),
              ],
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

  RangeValues _currentRangeValues = const RangeValues(20, 60);

  showdailog() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.45,
                padding: EdgeInsets.only(top: 18, left: 20, right: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "$ICON_URL/Fill 4.png",
                            scale: 14,
                            color: Appcolor,
                          ),
                        ),
                        AppText(
                          "Filter",
                          color: Appcolor,
                          // fontWeight: FontWeight.w800,
                          fontSize: 22,
                          fontFamily: "Medium",
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "$ICON_URL/Path-1.png",
                            scale: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    AppText(
                      "Location",
                      color: Colors.black54,
                      fontSize: 12,
                      fontFamily: "Regular1",
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Textfield(
                      hintText: "Evatown, Andorra",
                      visible: true,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AppText(
                      "Interested in",
                      color: Appcolor,
                      fontSize: 12,
                      fontFamily: "Regular1",
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                value = index;
                              });
                            },
                            child: Container(
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    '${iconlist[index]}',
                                    scale: 15,
                                    color: value == index
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  AppText(
                                    "${textlist[index]}",
                                    fontFamily: "Regular",
                                    fontWeight: FontWeight.w600,
                                    color: value == index
                                        ? Colors.white
                                        : Colors.grey,
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: value == index
                                      ? Appcolor
                                      : Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                              margin: EdgeInsets.only(right: 10),
                              height: 30,
                              width: MediaQuery.of(context).size.width * 0.27,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppText(
                      "Age",
                      color: Appcolor,
                      fontSize: 12,
                      fontFamily: "Regular1",
                      fontWeight: FontWeight.w400,
                    ),
                    RangeSlider(
                      values: _currentRangeValues,
                      max: 100,
                      divisions: 5,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                      inactiveColor: Colors.black12,
                      activeColor: Appcolor,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
              );
            },
          );
        });
  }
}

class Content {
  final String? text;
  final Color? color;
  final String? image;

  Content({this.image, this.text, this.color});
}
