import 'package:dating/Screens/DiscoverScreen.dart';
import 'package:dating/Screens/InboxScreen.dart';
import 'package:dating/Screens/MatchesScreen.dart';
import 'package:dating/Screens/ProfileScreen.dart';
import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  final int initialScreen;

  const CustomBottomBar({Key? key, this.initialScreen = 0}) : super(key: key);
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  List BottomIcon = [
    '$ICON_URL/Group 66462.png',
    '$ICON_URL/Heart.png',
    '$ICON_URL/Chat.png',
    '$ICON_URL/Profile-1.png',
  ];
  int Selected = 0;
  bool isLogOut = false;

  List Textlist = ["Discover", "Matches", "Inbox", "Profile"];

  List<Widget> Screen = [
    DiscoverScreen(),
    MatchesScreen(),
    InboxScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
        ),
        child: Container(
          color: Color(0xffFAECFA),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              4,
              (index) => Padding(
                padding: EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Selected = index;
                    });
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        BottomIcon[index],
                        height: 23,
                        color: Selected == index ? Appcolor : Color(0xff9B7D99),
                      ),
                      AppText(
                        "${Textlist[index]}",
                        color: Selected == index ? Appcolor : Color(0xff9B7D99),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Screen[Selected],
    );
  }
}

class ProfilesettingButtom extends StatelessWidget {
  ProfilesettingButtom({this.ontap, this.image, this.name});

  final Function()? ontap;
  final String? image;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: InkWell(
        onTap: ontap!,
        child: Row(
          children: [
            Container(
              child: Image.asset(
                image!,
                scale: 6,
              ),
              height: 45,
              width: 45,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                color: Color(0xffE4CADB).withOpacity(0.4),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            AppText(
              name!,
              color: Appcolor,
              fontFamily: "Regular",
              fontWeight: FontWeight.w500,
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_sharp,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
