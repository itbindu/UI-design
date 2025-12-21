import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;

    // Define whether it's a large screen or not based on width
    bool isLargeScreen = screenWidth > 600;

    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            width: isLargeScreen ? 500 : double.infinity, // Adjust width based on screen size
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Register',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),

                // Row for First Name and Last Name side by side, but wrap to Column on small screens
                isLargeScreen
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'First Name',
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Last Name',
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: <Widget>[
                          // First Name field
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'First Name',
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                            ),
                          ),
                          SizedBox(height: 16),
                          // Last Name field (on small screens, it will be below)
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Last Name',
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                            ),
                          ),
                        ],
                      ),
                SizedBox(height: 16),

                // Date of Birth field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Date of Birth',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  ),
                  keyboardType: TextInputType.datetime,
                ),
                SizedBox(height: 16),

                // Email field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16),

                // Password field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20),

                // Register button
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Register'),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(vertical: 14.0),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Login link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Already have an account?'),
                    TextButton(
                      onPressed: () {},
                      child: Text('Login'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
