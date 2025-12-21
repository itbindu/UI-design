import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Even or Odd Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EvenOddScreen(),
    );
  }
}

class EvenOddScreen extends StatefulWidget {
  @override
  _EvenOddScreenState createState() => _EvenOddScreenState();
}

class _EvenOddScreenState extends State<EvenOddScreen> {
  final TextEditingController _numberController = TextEditingController();
  String? _result;

  void _checkEvenOdd() {
    final number = int.tryParse(_numberController.text);
    if (number != null) {
      setState(() {
        if (number % 2 == 0) {
          _result = 'The number is Even';
        } else {
          _result = 'The number is Odd';
        }
      });
    } else {
      setState(() {
        _result = 'Invalid input';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Even or Odd Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _checkEvenOdd,
              child: Text('Check'),
            ),
            SizedBox(height: 16),
            if (_result != null)
              Text(
                'Result: $_result',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
