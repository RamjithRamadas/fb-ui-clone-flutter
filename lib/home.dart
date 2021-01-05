import 'package:flutter/material.dart';
import 'package:flutterFb/sections/headerButtonSection.dart';
import 'package:flutterFb/sections/roomSection.dart';
import 'package:flutterFb/sections/statusSection.dart';
import 'package:flutterFb/sections/storySection.dart';
import 'package:flutterFb/widgets/circularButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("Search screen appears!");
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("Chat screen appears!");
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
