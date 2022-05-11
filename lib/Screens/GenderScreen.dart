import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:dating/Widgets/CustomButtomBar.dart';
import 'package:dating/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  int value = 0;

  List iconlist = [
    "$ICON_URL/Path 199327.png",
    "$ICON_URL/Path 199328.png",
    "$ICON_URL/Group 66457.png",
  ];

  List textlist = ["Female", "Male", "Other"];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              "$ICON_URL/Fill -1.png",
              scale: 7,
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  "Gender",
                  color: Appcolor,
                  fontFamily: "Regular1",
                  fontSize: 25,
                ),
                Container(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            value = index;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                "${iconlist[index]}",
                                scale: 8,
                                color:
                                    value == index ? Colors.white : Colors.grey,
                              ),
                              margin: EdgeInsets.all(10),
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: value == index
                                      ? Appcolor
                                      : Colors.grey.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            AppText(
                              "${textlist[index]}",
                              fontFamily: "Regular",
                              fontWeight: FontWeight.w600,
                              color: value == index ? Appcolor : Colors.grey,
                            )
                          ],
                        ),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      );
                    },
                  ),
                  height: 200,
                ),
                Spacer(),
                CustomButton(
                  text: "Continue",
                  height: height * 0.07,
                  width: width * 0.6,
                  OnTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CustomBottomBar(),
                        ));
                  },
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
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
