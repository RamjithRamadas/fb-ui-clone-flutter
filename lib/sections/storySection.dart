import 'package:flutter/material.dart';
import 'package:flutterFb/widgets/storyCard.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(),
        ],
      ),
    );
  }
}