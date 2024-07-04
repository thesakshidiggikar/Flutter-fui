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
        color: Color.fromARGB(
            255, 220, 220, 220), // Set background color of body to grey
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatarsWidget(
                  names: names), // Use the CircleAvatarsWidget here
              SizedBox(height: 20), // Adjust spacing as needed
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Today",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                        ),
                        SizedBox(width: 66),
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(width: 4),
                            Text("Avail."),
                            SizedBox(width: 12),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(202, 254, 126, 46),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(width: 6),
                            Text("Pend."),
                            SizedBox(width: 6),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            SizedBox(width: 4),
                            Text("Occu."),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Add your scrollable column here
                    SingleChildScrollView(
                      child: Column(
                        children: List.generate(10, (index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 8.0),
                            padding: EdgeInsets.all(16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Text('Item ${index + 1}'),
                          );
                        }
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

SingleChildScrollView(
                      child: Column(
                        children: List.generate(10, (index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 8.0),
                            padding: EdgeInsets.all(16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Text('Item ${index + 1}'),
                          );
                        }
                        ),
                      ),
                    ),SingleChildScrollView(
                      child: Column(
                        children: List.generate(10, (index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 8.0),
                            padding: EdgeInsets.all(16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Text('Item ${index + 1}'),
                          );
                        }
                        ),
                      ),
                    ),