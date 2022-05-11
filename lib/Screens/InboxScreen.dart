import 'package:dating/ChatScreen.dart';
import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomAppbar.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  List imageList = [
    "assets/images/images (1).jpeg",
    "assets/images/images (2).jpeg",
    "assets/images/images (3).jpeg",
    "assets/images/images (4).jpeg",
    "assets/images/images (5).jpeg",
  ];

  int value = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppbar(
            leadingtext: "Inbox",
            image: "$ICON_URL/Search_image.png",
            image1: "$ICON_URL/Group 66458.png",
          )),
      body: Column(
        children: [
          Container(
            child: Container(
              height: 77,
              width: width,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 18),
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        value = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1.4,
                            color: value == index
                                ? Colors.black87
                                : Colors.black12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          "${imageList[index]}",
                          fit: BoxFit.fill,
                          width: 70,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(),
                          ));
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 18, right: 18),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    child: CircleAvatar(
                                      radius: 120,
                                      child: CircleAvatar(
                                        radius: 110,
                                        backgroundImage:
                                            AssetImage('${imageList[index]}'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 4,
                                      ),
                                      AppText(
                                        "Alta kreiger",
                                        color: Appcolor,
                                        fontSize: 14,
                                        fontFamily: "Regular",
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      AppText(
                                        "Typing...",
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontFamily: "Regular",
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      AppText(
                                        "10:30am",
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontFamily: "Regular",
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      index == 1
                                          ? Container(
                                              alignment: Alignment.center,
                                              child: AppText(
                                                "1",
                                                color: Colors.white,
                                                fontSize: 6,
                                              ),
                                              height: 8,
                                              width: 14,
                                              decoration: BoxDecoration(
                                                  color: Appcolor,
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            )
                                          : Container()
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 70, right: 18),
                          child: Divider(
                            thickness: 1.2,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  );
                },
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.centerRight,
                  colors: [Color(0xffFAECFA), Colors.white],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
