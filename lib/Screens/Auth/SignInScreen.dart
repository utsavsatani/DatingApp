import 'package:dating/Screens/Auth/RegisterScreen.dart';
import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:dating/Widgets/CustomButtomBar.dart';
import 'package:dating/Widgets/CustomButton.dart';
import 'package:dating/Widgets/CustomTextField.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'ForgotPasswordAcreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.4,
              child: Image.asset("$ICON_URL/SignInScreenimage.png",
                  fit: BoxFit.fill),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      "Sign In",
                      color: Appcolor,
                      fontSize: 20,
                      fontFamily: "Medium",
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    AppText(
                      "Username",
                      color: Appcolor,
                      fontSize: 10,
                      fontFamily: "Regular",
                      fontWeight: FontWeight.w100,
                    ),
                    CustomTextField(
                      hintText: "Graysonbailey1234",
                      image: "$ICON_URL/Profile.png",
                    ),
                    SizedBox(
                      height: 25,
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
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Text(
                            "View",
                            style: TextStyle(color: Appcolor, fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotPasswordAcreen(),
                              ));
                        },
                        child: AppText(
                          "Forgot Password?",
                          color: Appcolor,
                          fontSize: 15,
                          fontFamily: "Regular",
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomButton(
                      text: "Sign In",
                      OnTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CustomBottomBar(),
                            ));
                      },
                      height: height * 0.07,
                      width: width * 0.6,
                    ),
                    SizedBox(
                      height: height * 0.09,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                            color: Appcolor,
                            fontFamily: "Regular",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(
                              text: 'Register',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Bold",
                                fontWeight: FontWeight.w100,
                                decoration: TextDecoration.underline,
                                color: Appcolor,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RegisterScreen(),
                                      ));
                                },
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              height: height * 0.6,
              width: width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.centerRight,
                    colors: [Color(0xffFAECFA), Colors.white],
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25))),
            ),
          ],
        ),
      ),
    );
  }
}
