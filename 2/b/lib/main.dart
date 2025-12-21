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
          title: Text('Row, Column, and Stack Example'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Row Layout
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.lightBlueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      color: Colors.red,
                      child: Text('Item 1'),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      color: Colors.green,
                      child: Text('Item 2'),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      color: Colors.blue,
                      child: Text('Item 3'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Row with Column and Stack side by side
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Column Layout
                  Container(
                    padding: EdgeInsets.all(8.0),
                    color: Colors.orangeAccent,
                    width: 150, // Width to control space
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20.0),
                          color: Colors.red,
                          child: Text(
                            'Item 1',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          color: Colors.green,
                          child: Text(
                            'Item 2',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          color: Colors.blue,
                          child: Text(
                            'Item 3',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Stack Layout
                  Container(
                    padding: EdgeInsets.all(8.0),
                    color: Colors.purpleAccent,
                    width: 150, // Width to control space
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        // Background Circle
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        // Foreground Circle
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                        // Text over the circles
                        Positioned(
                          top: 0,
                          child: Text(
                            'Stacked Text',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
