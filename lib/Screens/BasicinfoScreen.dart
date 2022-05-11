import 'dart:io';

import 'package:dating/Screens/Media_Screen.dart';
import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:dating/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BasicinfoScreen extends StatefulWidget {
  const BasicinfoScreen({Key? key}) : super(key: key);

  @override
  _BasicinfoScreenState createState() => _BasicinfoScreenState();
}

class _BasicinfoScreenState extends State<BasicinfoScreen> {
  File? _image;
  String? fileName;
  var dateOfBirth = '';

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

  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dateOfBirth = selectedDate.toString().split(' ').first;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.15,
              ),
              AppText(
                "Basic Info",
                color: Appcolor,
                fontFamily: "Regular1",
                fontSize: 25,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    GestureDetector(
                      onTap: () {
                        getImage();
                      },
                      child: Container(
                        height: height * 0.13,
                        width: width * 0.28,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: _image != null
                                ? Image.file(
                                    _image!,
                                    fit: BoxFit.cover,
                                  )
                                : Container(
                                    child: Icon(
                                      Icons.person,
                                      size: 50,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  )),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              AppText(
                "Username",
                color: Appcolor,
                fontSize: 12,
                fontFamily: "Regular",
                fontWeight: FontWeight.w100,
              ),
              Textfield(
                hintText: "Username",
              ),
              SizedBox(
                height: 15,
              ),
              AppText(
                "Phone Number",
                color: Appcolor,
                fontSize: 12,
                fontFamily: "Regular",
                fontWeight: FontWeight.w100,
              ),
              Textfield(
                hintText: "Phone Number",
              ),
              SizedBox(
                height: 15,
              ),
              AppText(
                "Address",
                color: Appcolor,
                fontSize: 12,
                fontFamily: "Regular",
                fontWeight: FontWeight.w100,
              ),
              Textfield(
                hintText: "Address",
              ),
              SizedBox(
                height: 15,
              ),
              AppText(
                "Date of Birth",
                color: Appcolor,
                fontSize: 12,
                fontFamily: "Regular",
                fontWeight: FontWeight.w100,
              ),
              GestureDetector(
                onTap: () {
                  _selectDate(context);
                },
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Appcolor),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Text(
                      dateOfBirth == '' ? "Date of birth" : dateOfBirth,
                      style: dateOfBirth == ''
                          ? TextStyle(color: Colors.grey, fontSize: 14)
                          : TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Spacer(),
              CustomButton(
                text: "Continue",
                height: height * 0.07,
                width: width * 0.6,
                OnTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Media_Screen(),
                      ));
                },
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Textfield extends StatelessWidget {
  Textfield({this.hintText, this.visible = false});

  final String? hintText;
  final bool? visible;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Appcolor)),
        child: TextField(
            decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: Visibility(
            visible: visible!,
            child: Icon(
              Icons.my_location,
              color: Appcolor,
              size: 20,
            ),
          ),
          hintText: hintText,
        )));
  }
}
