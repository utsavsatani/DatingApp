import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({this.leadingtext, this.image1, this.image});

  final String? leadingtext;
  final String? image;
  final String? image1;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 100,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: 20, top: 10),
        child: AppText(
          leadingtext!,
          color: Appcolor,
          fontSize: 20,
          fontFamily: "Regular1",
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        Row(
          children: [
            Image.asset(
              image!,
              height: 25,
              width: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              image1!,
              scale: 7,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ],
    );
  }
}
