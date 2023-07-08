import 'package:flutter/material.dart';

import 'loginPage.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Instagram logo or app name
            Image.asset(
              'asset/instalogo.png',
              height: 80.0,
            ),

            SizedBox(height: 48.0),

            // Full Name TextField
            TextField(
              decoration: InputDecoration(
                hintText: 'Full Name',
                border: OutlineInputBorder(

                ),
              ),
            ),

            SizedBox(height: 16.0),

            // Username TextField
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(

                ),
              ),
            ),

            SizedBox(height: 16.0),

            // Email TextField
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(

                ),
              ),
            ),

            SizedBox(height: 16.0),

            // Password TextField
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(

                ),
              ),
            ),

            SizedBox(height: 24.0),

            // Sign Up Button
            ElevatedButton(
              onPressed: () {
                // Perform sign up action
              },
              child: Text('Sign up'),
            ),

            SizedBox(height: 16.0),

            // Already have an account Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  child: Text('Log in'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
