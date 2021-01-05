import 'package:flutter/material.dart';
import 'package:flutterFb/assets.dart';
import 'package:flutterFb/widgets/avatar.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage: mammoottyImage, statusInfo: true),
          Avatar(displayImage: dulquarImage, statusInfo: true),
          Avatar(displayImage: mohanlalImage, statusInfo: true),
          Avatar(displayImage: fahadImage, statusInfo: true),
          Avatar(displayImage: prithvirajImage, statusInfo: true),
          Avatar(displayImage: dileepImage, statusInfo: true),
          Avatar(displayImage: nivinImage, statusInfo: true),
          Avatar(displayImage: jayasuryaImage, statusInfo: true),
          Avatar(displayImage: tovinoImage, statusInfo: true),
        ],
      ),
    );
  }
}

Widget createRoomButton() {
  return Container(
    padding: EdgeInsets.only(left: 5, right: 5),
    child: OutlineButton.icon(
      shape: StadiumBorder(),
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text(
        "Create \nRoom",
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
      borderSide: BorderSide(
        color: Colors.blue[100],
        width: 2,
      ),
      onPressed: () {
        print("Create room button pressed!");
      },
    ),
  );
}
