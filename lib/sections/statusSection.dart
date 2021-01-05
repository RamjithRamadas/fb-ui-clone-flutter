import 'package:flutter/material.dart';
import 'package:flutterFb/assets.dart';
import 'package:flutterFb/widgets/avatar.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: mammoottyImage,
        statusInfo: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
