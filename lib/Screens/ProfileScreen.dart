import 'package:dating/Screens/Auth/SignInScreen.dart';
import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:dating/Widgets/CustomButtomBar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppText(
          "Profile",
          color: Appcolor,
          fontSize: 20,
          fontFamily: "Regular",
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ));
            },
            child: Image.asset(
              "$ICON_URL/Login.png",
              scale: 13,
              color: Appcolor,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      '$IMG_URL/images (4).jpeg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: AppText(
                    "Graysonbailey123",
                    color: Appcolor,
                    fontFamily: "Regular",
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Center(
                  child: AppText(
                    "Graysonbailey123@gmail.com",
                    color: Colors.grey,
                    fontSize: 13,
                    fontFamily: "Regular",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                AppText(
                  "Account Settings",
                  color: Colors.grey,
                  fontSize: 15,
                  fontFamily: "Regular",
                ),
                ProfilesettingButtom(
                  ontap: () {},
                  image: "$ICON_URL/Profile-2.png",
                  name: "Profile Setting",
                ),
                ProfilesettingButtom(
                  ontap: () {},
                  image: "$ICON_URL/3 User.png",
                  name: "Invite",
                ),
                ProfilesettingButtom(
                  ontap: () {},
                  image: "$ICON_URL/Notification.png",
                  name: "Notification",
                ),
                ProfilesettingButtom(
                  ontap: () {},
                  image: "$ICON_URL/Lock.png",
                  name: "Change Password",
                ),
                ProfilesettingButtom(
                  ontap: () {},
                  image: "$ICON_URL/Setting.png",
                  name: "Setting",
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: AppText(
                    "V.1.0.0",
                    color: Colors.black45,
                  ),
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
        height: double.infinity,
      ),
    );
  }
}
