import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            margin: EdgeInsets.all(16.0),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade800,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      labelStyle: TextStyle(color: Colors.blue.shade800),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue.shade800),
                      ),
                    ),
                    cursorColor: Colors.blue.shade800,
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      labelStyle: TextStyle(color: Colors.blue.shade800),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue.shade800),
                      ),
                    ),
                    cursorColor: Colors.blue.shade800,
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.blue.shade800),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue.shade800),
                      ),
                    ),
                    cursorColor: Colors.blue.shade800,
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.blue.shade800),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue.shade800),
                      ),
                    ),
                    cursorColor: Colors.blue.shade800,
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: Colors.blue.shade800),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue.shade800),
                      ),
                    ),
                    cursorColor: Colors.blue.shade800,
                    obscureText: true,
                  ),
                  SizedBox(height: 32.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade800,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    ),
                    child: Text('Sign Up'),
                  ),
                  SizedBox(height: 16.0),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Don't have an account? Login",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
