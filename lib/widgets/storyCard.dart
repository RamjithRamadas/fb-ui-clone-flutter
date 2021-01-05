import 'package:flutter/material.dart';
import 'package:flutterFb/assets.dart';
import 'package:flutterFb/widgets/circularButton.dart';

class StoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(mammoottyImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            child: CircularButton(
              buttonIcon: Icons.add,
              iconColor: Colors.blue,
              buttonAction: () {
                print("Create new story!");
              },
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text("Add to Story", style: TextStyle(
              color: Colors.white,
              fontWeight : FontWeight.bold,
              fontSize: 16,
            ),),
          )
        ],
      ),
    );
  }
}
