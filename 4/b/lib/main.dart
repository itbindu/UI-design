import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define named routes
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/about': (context) => AboutScreen(),
      },
    );
  }
}

// HomeScreen
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to AboutScreen using the named route '/about'
            Navigator.pushNamed(context, '/about');
          },
          child: Text('Go to About Page'),
        ),
      ),
    );
  }
}

// AboutScreen
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to HomeScreen
            Navigator.pop(context);
          },
          child: Text('Back to Home'),
        ),
      ),
    );
  }
}
