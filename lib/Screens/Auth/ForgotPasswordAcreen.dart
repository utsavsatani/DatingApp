import 'package:dating/Screens/Auth/ResetPasswordScreen.dart';
import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:dating/Widgets/CustomButton.dart';
import 'package:dating/Widgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class ForgotPasswordAcreen extends StatefulWidget {
  const ForgotPasswordAcreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordAcreenState createState() => _ForgotPasswordAcreenState();
}

class _ForgotPasswordAcreenState extends State<ForgotPasswordAcreen> {
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
          "Forgot Password",
          color: Appcolor,
          fontFamily: "Regular1",
          fontSize: 17,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: height * 0.4,
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: Image.asset("$ICON_URL/ForgotScreenimage.png",
                    fit: BoxFit.fitWidth),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        "Enter The Email Address Associated \nwith Your Account.",
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: "Regular",
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      AppText(
                        "Email",
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
                        height: height * 0.1,
                      ),
                      CustomButton(
                        text: "Send",
                        OnTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResetPasswordScreen(),
                              ));
                        },
                        height: height * 0.07,
                        width: width * 0.6,
                      ),
                      SizedBox(
                        height: height * 0.09,
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
