// circle_avatars_widget.dart

import 'package:flutter/material.dart';

class CircleAvatarsWidget extends StatelessWidget {
  final List<String> names;

  const CircleAvatarsWidget({Key? key, required this.names}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
      decoration: BoxDecoration(
        color: Color(0xFF243E80),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCircleAvatar(names[0]),
              buildCircleAvatar(names[1]),
              buildCircleAvatar(names[2]),
              buildCircleAvatar(names[3]),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCircleAvatar(names[4]),
              buildCircleAvatar(names[5]),
              buildCircleAvatar(names[6]),
              buildCircleAvatar(names[7]),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCircleAvatar(String name) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              name.substring(
                  0, 1), // Display first character of name as initial
              style: TextStyle(
                color: Color(0xFF243E80),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
