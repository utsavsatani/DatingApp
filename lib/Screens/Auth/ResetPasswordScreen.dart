import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:dating/Widgets/CustomButton.dart';
import 'package:dating/Widgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              "$ICON_URL/lift.png",
              scale: 8,
            )),
        title: AppText(
          "Reset Password",
          color: Appcolor,
          fontFamily: "Regular1",
          fontSize: 17,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // padding: EdgeInsets.only(top: 30),
                height: height * 0.3,
                child:
                    Image.asset("$ICON_URL/ResetImage.png", fit: BoxFit.fill),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        "Enter The Verification Cord And \nLogin Your Account.",
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: "Regular",
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AppText(
                        "Enter Your OTP",
                        color: Appcolor,
                        fontSize: 10,
                        fontFamily: "Regular",
                        fontWeight: FontWeight.w100,
                      ),
                      CustomTextField(
                        hintText: "Enter Your OTP",
                        image: "$ICON_URL/Iconly-Bulk-Lock.png",
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      AppText(
                        "Password",
                        color: Appcolor,
                        fontSize: 10,
                        fontFamily: "Regular",
                        fontWeight: FontWeight.w100,
                      ),
                      CustomTextField(
                        hintText: "Password",
                        obscureText: true,
                        suffixVisibility: true,
                        image: "$ICON_URL/Iconly-Bulk-Lock.png",
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Text(
                            "View",
                            style: TextStyle(color: Appcolor, fontSize: 10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      AppText(
                        "confirm password",
                        color: Appcolor,
                        fontSize: 10,
                        fontFamily: "Regular",
                        fontWeight: FontWeight.w100,
                      ),
                      CustomTextField(
                        hintText: "Password",
                        obscureText: true,
                        suffixVisibility: true,
                        image: "$ICON_URL/Iconly-Bulk-Lock.png",
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Text(
                            "View",
                            style: TextStyle(color: Appcolor, fontSize: 10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.08,
                      ),
                      CustomButton(
                        text: "Send",
                        OnTap: () {},
                        height: height * 0.07,
                        width: width * 0.6,
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
