import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}

// First screen - HomeScreen
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigate to SecondScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text('Navigate using TextButton'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Navigate to SecondScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text('Navigate using OutlinedButton'),
            ),
            SizedBox(height: 20),
            IconButton(
              icon: Icon(Icons.navigate_next),
              color: Colors.blue,
              iconSize: 30,
              onPressed: () {
                // Navigate to SecondScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Second screen - SecondScreen
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen - Navigation Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigate back to HomeScreen
                Navigator.pop(context);
              },
              child: Text('Back using TextButton'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Navigate back to HomeScreen
                Navigator.pop(context);
              },
              child: Text('Back using OutlinedButton'),
            ),
            SizedBox(height: 20),
            IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.red,
              iconSize: 30,
              onPressed: () {
                // Navigate back to HomeScreen
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
