import 'package:flutter/material.dart';
import 'package:threads_clone/homescreen.dart';
import 'package:threads_clone/onboarding/signupPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Instagram logo or app name
            Image.asset(
              'asset/instalogo.png',
              height: 80.0,
            ),

            SizedBox(height: 48.0),

            // Username TextField
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(

                ),
                hintText: 'Username',
              ),
            ),

            SizedBox(height: 16.0),

            // Password TextField
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(

                ),
                hintText: 'Password',
              ),
            ),

            SizedBox(height: 24.0),

            // Login Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
              child: Text('Log in'),
            ),

            SizedBox(height: 16.0),

            // Forgot Password Link
            TextButton(
              onPressed: () {
                // Navigate to forgot password screen
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.grey),
              ),
            ),

            SizedBox(height: 32.0),

            // Sign Up Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));

                  },
                  child: Text('Sign up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
