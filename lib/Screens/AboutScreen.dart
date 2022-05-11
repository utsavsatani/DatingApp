import 'package:dating/Screens/GenderScreen.dart';
import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:dating/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
      body: Padding(
        padding: EdgeInsets.only(left: 15, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              "About",
              color: Appcolor,
              fontFamily: "Regular1",
              fontSize: 25,
            ),
            Container(
              child: AppText(
                'Say Somethingh adout You',
                color: Appcolor,
                fontSize: 10,
                fontWeight: FontWeight.w100,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffFAECFA),
              ),
              padding: EdgeInsets.only(top: 10, left: 10),
              height: height * 0.4,
              width: width,
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
                      builder: (context) => GenderScreen(),
                    ));
              },
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
