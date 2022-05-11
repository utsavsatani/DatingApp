import 'dart:io';

import 'package:dating/Screens/AboutScreen.dart';
import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:dating/Widgets/CustomButton.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Media_Screen extends StatefulWidget {
  const Media_Screen({Key? key}) : super(key: key);

  @override
  _Media_ScreenState createState() => _Media_ScreenState();
}

class _Media_ScreenState extends State<Media_Screen> {
  File? _image;
  String? fileName;

  Future getImage() async {
    final pickedFile =
        await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile!.path);
      if (_image != null) {
        fileName = _image!.path.split('/').last;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              "$ICON_URL/Fill -1.png",
              scale: 7,
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  "Media",
                  color: Appcolor,
                  fontFamily: "Regular1",
                  fontSize: 25,
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: 6,
                    padding: EdgeInsets.only(right: 20),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 100,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          getImage();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFAECFA),
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: _image != null
                                ? Stack(
                                    children: [
                                      Image.file(
                                        _image!,
                                        fit: BoxFit.cover,
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          // margin: EdgeInsets.all(5),
                                          child: Image.asset(
                                            "$ICON_URL/Fill 4.png",
                                            color: Colors.white,
                                            scale: 20,
                                          ),
                                          alignment: Alignment.center,
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              color: Appcolor,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      )
                                    ],
                                  )
                                : DottedBorder(
                                    borderType: BorderType.RRect,
                                    radius: Radius.circular(10),
                                    dashPattern: [5, 5],
                                    strokeWidth: 3,
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 50,
                                        color: Appcolor,
                                      ),
                                    )),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                CustomButton(
                  text: "Continue",
                  height: height * 0.07,
                  width: width * 0.6,
                  OnTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutScreen(),
                        ));
                  },
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   begin: Alignment.bottomCenter,
            //   end: Alignment.centerRight,
            //   colors: [Color(0xffFAECFA), Colors.white],
            // ),
            ),
      ),
    );
  }
}
