import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful and Stateless Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

// StatelessWidget Example
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Stateful and Stateless Widget Example',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            MyStatefulWidget(),
          ],
        ),
      ),
    );
  }
}

// StatefulWidget Example
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _message = 'Click the button to change text';

  void _changeMessage() {
    setState(() {
      _message = 'Text has changed!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _message,
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _changeMessage,
          child: Text('Change Text'),
        ),
      ],
    );
  }
}
