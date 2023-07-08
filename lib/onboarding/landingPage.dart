import 'package:flutter/material.dart';
import 'package:threads_clone/onboarding/loginPage.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Your content here

              // Button
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
              child: Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Colors.black,
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,                children: [
                    Text("Log in with Instagram"),
Icon(Icons.g_mobiledata),

                  ],),
                ),
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}
