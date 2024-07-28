import 'package:flutter/material.dart';
import 'package:formula_app/widgets/list_tile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Physics Formulas",
            style: TextStyle(fontFamily: "aBeeZee", fontSize: 25),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            SizedBox(height: 10),
            ListTileWidget(
              titleText: "Class XI",
              subTitleText: "14 Chapters",
              logoImgName: "11.png",
            ),
            // SizedBox(height: 10),
            // ListTileWidget(
            //   titleText: "Class XII",
            //   subTitleText: "14 Chapters",
            //   logoImgName: "12.png",
            // ),
          ],
        ),
      ),
    );
  }
}
