import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),  // Provide the global state
      child: MaterialApp(
        title: 'State Management with setState and Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

class CounterModel with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners(); // Notify listeners when the state changes
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _localCounter = 0;

  void _incrementLocalCounter() {
    setState(() {
      _localCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Listen to changes in CounterModel for global state
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('State Management Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Local Counter (setState): $_localCounter', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: _incrementLocalCounter,
              child: Text('Increment Local Counter'),
            ),
            SizedBox(height: 30),
            Text('Global Counter (Provider): ${counterModel.counter}', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: counterModel.increment,
              child: Text('Increment Global Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
