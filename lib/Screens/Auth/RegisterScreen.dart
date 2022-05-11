import 'package:dating/Screens/Auth/SignInScreen.dart';
import 'package:dating/Screens/BasicinfoScreen.dart';
import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:dating/Widgets/CustomButton.dart';
import 'package:dating/Widgets/CustomTextField.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              height: height * 0.38,
              child: Image.asset("assets/icons/Registerimage.png",
                  fit: BoxFit.fill),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      "Register",
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
                      hintText: "Graysonbailey@gmail.com",
                      image: "$ICON_URL/Profile.png",
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    AppText(
                      "Email",
                      color: Appcolor,
                      fontSize: 10,
                      fontFamily: "Regular",
                      fontWeight: FontWeight.w100,
                    ),
                    CustomTextField(
                      hintText: "Graysonbailey1234",
                      image: "$ICON_URL/Iconly-Bulk-Message.png",
                    ),
                    SizedBox(
                      height: height * 0.02,
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
                      height: 35,
                    ),
                    CustomButton(
                      text: "Register",
                      OnTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BasicinfoScreen(),
                            ));
                      },
                      height: height * 0.07,
                      width: width * 0.6,
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            color: Appcolor,
                            fontFamily: "Regular",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign in',
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
                                        builder: (context) => SignInScreen(),
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
              height: height * 0.63,
              width: width,
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.6, 1.9),
                    radius: 1.4,
                    colors: [Appcolor.withOpacity(0.09), Colors.white],
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
