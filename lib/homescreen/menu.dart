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
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildSquareAvatar(names[0]),
              SizedBox(width: 10),
              buildSquareAvatar(names[1]),
              SizedBox(width: 10),
              buildSquareAvatar(names[2]),
              SizedBox(width: 10),
              buildSquareAvatar(names[3]),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildSquareAvatar(names[4]),
              SizedBox(width: 10),
              buildSquareAvatar(names[5]),
              SizedBox(width: 10),
              buildSquareAvatar(names[6]),
              SizedBox(width: 10),
              buildSquareAvatar(names[7]),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget buildSquareAvatar(String name) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10), // Curved edges
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
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
