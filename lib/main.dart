import 'package:flutter/material.dart';
import 'package:formula_app/screens/eleven_screens/rotational.dart';
import 'package:formula_app/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
    // home: Rotational());
  }
}
