import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_university_app/homescreen/menu.dart';
import 'menu.dart'; // Import the circle_avatars_widget.dart file

class HomeScreen extends StatelessWidget {
  // Example names for circles
  final List<String> names = [
    "Joe",
    "Jah",
    "Mic",
    "Emily Brown",
    "Willor",
    "Sopez",
    "Dark",
    "Emmee"
  ];

  @override
  Widget build(BuildContext context) {
    // Get the current user
    User? user = FirebaseAuth.instance.currentUser;
    String email =
        user?.email ?? 'example@gmail.com'; // Default email if user is null
    String initial = email[0].toUpperCase();

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Row(
            children: [
              Text(
                "Dypiu!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    initial,
                    style: TextStyle(
                      color: Color(0xFF243E80),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

          titleSpacing: 0, // Remove default title padding
          backgroundColor: Color(0xFF243E80),
          centerTitle: false,
        ),
        body: Container(
          color: Color.fromARGB(255, 210, 210, 210), // Set background color of body to grey
          child: ListView(
            children: [
              CircleAvatarsWidget(
                  names: names), // Use the CircleAvatarsWidget here
              SizedBox(height: 20), // Adjust spacing as needed
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Add your content here if needed
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        
        );
  }
}
