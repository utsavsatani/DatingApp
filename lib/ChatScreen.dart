import 'package:dating/Utils/Constant.dart';
import 'package:dating/Widgets/CustomApptexts.dart';
import 'package:flutter/material.dart';

import 'Utils/Constant.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String text = "";
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Container(
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    text = textEditingController.text;
                  });
                },
                child: Image.asset(
                  "$ICON_URL/Send.png",
                  scale: 12,
                ),
              ),
              border: InputBorder.none,
              hintText: 'Typing Message',
            ),
            controller: textEditingController,
          ),
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    "$ICON_URL/Arrow - Left.png",
                    scale: 10,
                    color: Colors.black,
                  ),
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/images/images (6).jpeg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  margin: EdgeInsets.only(right: 10, left: 10),
                  height: 50,
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      "Audreanne",
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(
                      "Typing...",
                      fontSize: 13,
                      fontFamily: "Regular",
                      color: Colors.grey,
                    )
                  ],
                ),
                Spacer(),
                Image.asset(
                  "$ICON_URL/Call.png",
                  scale: 8,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "$ICON_URL/Video.png",
                  scale: 8,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              indent: 15,
              endIndent: 15,
              thickness: 1,
              color: Appcolor,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MessageBubble(
                      isMe: false,
                      text: "Hello",
                    ),
                    MessageBubble(
                      isMe: true,
                      text: "Hello",
                    ),
                    MessageBubble(
                      isMe: false,
                      text: "Hello",
                    ),
                    MessageBubble(
                      isMe: false,
                      text: "Hello",
                    ),
                    MessageBubble(
                      isMe: false,
                      text: "Hello",
                    ),
                    MessageBubble(
                      isMe: false,
                      text: "Hello",
                    ),
                    MessageBubble(
                      isMe: false,
                      text: "Hello",
                    ),
                    MessageBubble(
                      isMe: false,
                      text: "Hello",
                    ),
                    MessageBubble(
                      isMe: false,
                      text: "Hello",
                    ),
                    MessageBubble(
                      isMe: false,
                      text: "Hello",
                    ),
                    MessageBubble(
                      isMe: false,
                      text: "Hello",
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;

  MessageBubble({required this.text, required this.isMe});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Material(
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(13),
                    bottomLeft: Radius.circular(13),
                    bottomRight: Radius.circular(13),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(13),
                    bottomLeft: Radius.circular(13),
                    bottomRight: Radius.circular(13),
                  ),
            color: isMe ? Color(0xfff3f3f3) : Color(0xff380e37),
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 15, color: isMe ? Appcolor : Colors.white),
                )),
          ),
          Text(
            "10:30 am",
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }

  // String text2 = DateTime.now() as String;
}
