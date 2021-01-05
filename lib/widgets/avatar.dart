import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool statusInfo;

  Avatar({
    @required this.displayImage,
    @required this.statusInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 3, right: 3),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              width: 50,
              height: 50,
            ),
          ),
        ),
        statusInfo == true
            ? Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : SizedBox()
      ],
    );
  }
}
