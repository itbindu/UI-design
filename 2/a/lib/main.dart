import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text, Image, and Container Example'),
        ),
        body: Center(
          child: Container(
            width: 300, // Width of the container
            height: 400, // Height of the container
            padding: EdgeInsets.all(16.0), // Padding inside the container
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent, // Background color of the container
              borderRadius: BorderRadius.circular(10), // Rounded corners
              border: Border.all(color: Colors.blue, width: 2), // Border around the container
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hello, World!',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(height: 20), // Space between text and image
                Image.asset(
                  'assets/Wakeel.jpg', // Make sure the path matches your asset folder
                  width: 200,
                  height: 200,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
