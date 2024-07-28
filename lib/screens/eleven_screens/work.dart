import 'package:flutter/material.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const CustomAppBarTitle(titleText: "Units and Measurements"),
        centerTitle: true,
      ),
      body: ListView(
        children: const [],
      ),
    );
  }
}
