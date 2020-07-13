import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: WelcomeScreen(),
    );
  }
}
