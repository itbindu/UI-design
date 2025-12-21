import 'package:flutter/material.dart';

// Custom Button Widget
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}

// Custom Card Widget
class CustomCard extends StatelessWidget {
  final String title;
  final IconData icon;

  CustomCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Icon(icon, size: 30, color: Colors.blue),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Input Field Widget
class CustomInputField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  CustomInputField({required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.all(10),
      ),
    );
  }
}

// Custom Avatar Widget
class CustomAvatar extends StatelessWidget {
  final String imageUrl;

  CustomAvatar({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  String _displayText = 'Hello, BVRIT HYDERABAD!';

  void _onButtonPressed() {
    setState(() {
      _displayText = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widgets Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomAvatar(
              imageUrl: 'https://via.placeholder.com/150', // Replace with asset or actual URL
            ),
            SizedBox(height: 20),
            CustomInputField(
              hintText: 'Enter your name',
              controller: _controller,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Submit',
              onPressed: _onButtonPressed,
            ),
            SizedBox(height: 20),
            Text(
              _displayText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CustomCard(
              title: 'Welcome to Custom Widgets',
              icon: Icons.star,
            ),
          ],
        ),
      ),
    );
  }
}
