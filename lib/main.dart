import 'package:flutter/material.dart';
import 'package:formula_app/screens/eleven_screens/work.dart';
import 'package:formula_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        // home: HomeScreen());
        home: Work());
  }
}
