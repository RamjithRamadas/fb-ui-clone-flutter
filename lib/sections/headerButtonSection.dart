import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    @required void Function() buttonAction,
    @required IconData buttonIcon,
    @required Color buttonColor,
    @required String buttonText,
  }) {
    return FlatButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            buttonAction: () {
              print("Live button pressed!");
            },
            buttonIcon: Icons.video_call,
            buttonColor: Colors.red,
            buttonText: "Live",
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(
            buttonAction: () {
              print("Photo button pressed!");
            },
            buttonIcon: Icons.photo_library,
            buttonColor: Colors.green,
            buttonText: "Photo",
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(
            buttonAction: () {
              print("Room button pressed!");
            },
            buttonIcon: Icons.video_call,
            buttonColor: Colors.purple,
            buttonText: "Room",
          ),
        ],
      ),
    );
  }
}
