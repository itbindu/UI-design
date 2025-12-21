import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimationScreen(),
    );
  }
}

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    // Define the fade animation
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Define the slide animation
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // Define the scale animation
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Fade Animation
            FadeTransition(
              opacity: _fadeAnimation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(child: Text('Fade')),
              ),
            ),
            SizedBox(height: 20),
            // Slide Animation
            SlideTransition(
              position: _slideAnimation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Center(child: Text('Slide')),
              ),
            ),
            SizedBox(height: 20),
            // Scale Animation
            ScaleTransition(
              scale: _scaleAnimation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
                child: Center(child: Text('Scale')),
              ),
            ),
            SizedBox(height: 40),
            // Toggle Visibility Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                  _isVisible ? _controller.forward() : _controller.reverse();
                });
              },
              child: Text(_isVisible ? 'Hide Animations' : 'Show Animations'),
            ),
          ],
        ),
      ),
    );
  }
}
