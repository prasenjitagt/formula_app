import 'package:flutter/material.dart';
import 'package:formula_app/dependency_injector.dart';
import 'package:formula_app/screens/eleven_screens/ktg.dart';
import 'package:formula_app/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  DependencyInjector.inject();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // home: HomeScreen());
        home: KTG(appBarTitleText: "Test"));
  }
}
