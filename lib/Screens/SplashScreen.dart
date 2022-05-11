import 'dart:async';

import 'package:dating/Screens/Auth/SignInScreen.dart';
import 'package:dating/Utils/Constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignInScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: height,
            width: width,
            child: Image.asset(
              '$IMG_URL/BG.png',
              fit: BoxFit.cover,
            ),
          ),
          Image.asset(
            "$ICON_URL/Appicon.png",
            height: height * 0.2,
          )
        ],
      ),
    );
  }
}
