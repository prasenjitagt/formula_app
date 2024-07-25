import 'package:flutter/material.dart';
import 'package:formula_app/widgets/line_motion_equtions.dart';
import 'package:formula_app/widgets/unit_double_tap_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class StraightLine extends StatelessWidget {
  const StraightLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text(
          "Motion in a Straight Line",
          style: GoogleFonts.aBeeZee(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          DoubleTapWidget(imageHeight: 100, imageName: "line1.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 140, imageName: "line2.png"),
          SizedBox(height: 10),
          LineMotionEqutions(),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 210, imageName: "line4.png"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 250, imageName: "line3.png"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 180, imageName: "line5.jpg"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
