import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? OnTap;
  final double? height;
  final double? width;

  CustomButton({
    required this.text,
    this.OnTap,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Align(
        alignment: Alignment.center,
        child: Container(
            // margin: EdgeInsets.symmetric(horizontal: 15),
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: Appcolor, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: AppText(
                text,
                color: Colors.white,
                fontSize: 18,
              ),
            )),
      ),
    );
  }
}

class Likebuttom extends StatelessWidget {
  Likebuttom({this.ontap, this.image, this.color});

  final Function()? ontap;
  final String? image;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap!,
      child: Container(
        alignment: Alignment.center,
        child: Image.asset(
          image!,
          scale: 8,
        ),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: color),
      ),
    );
  }
}
