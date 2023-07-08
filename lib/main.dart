import 'package:flutter/material.dart';

import 'onboarding/landingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Threads Clone',
      theme: ThemeData.light(),  // Set the light theme
      darkTheme: ThemeData.dark(),  // Set the dark theme
      themeMode: ThemeMode.system,  // Use system theme mode
      home: LandingScreen(),
    );

  }
}

