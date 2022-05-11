import 'package:dating/Utils/Constant.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    this.image,
    this.obscureText = false,
    this.hintText,
    this.suffixIcon,
    this.suffixVisibility = false,
    this.prefftext,
  });

  final String? image;
  final String? hintText;
  final Widget? suffixIcon;
  bool suffixVisibility;
  final Widget? prefftext;
  bool obscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  toggle() {
    setState(() {
      widget.obscureText = !widget.obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.only(left: 10, bottom: 0, top: 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Appcolor)),
        child: Row(
          children: [
            Image.asset(
              widget.image!,
              height: 22,
              width: 22,
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              height: height * 0.04,
              color: Appcolor.withOpacity(0.6),
              width: 1.5,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextField(
              obscuringCharacter: '*',
              obscureText: widget.obscureText,
              decoration: InputDecoration(
                hintText: widget.hintText,
                suffix: widget.suffixVisibility == false
                    ? widget.prefftext
                    : Visibility(
                        visible: widget.suffixVisibility,
                        child: widget.suffixVisibility == true
                            ? Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: InkWell(
                                  onTap: toggle,
                                  child: Text(
                                    widget.obscureText ? 'View' : 'Hide',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff949494),
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox()),
                focusColor: Appcolor,
                border: InputBorder.none,
              ),
            ))
          ],
        ));
  }
}
