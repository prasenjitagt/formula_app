import 'package:flutter/material.dart';
import 'package:formula_app/widgets/unit_double_tap_widget.dart';
import 'package:formula_app/widgets/unit_dimesional_formula.dart';
import 'package:google_fonts/google_fonts.dart';

class Units extends StatelessWidget {
  const Units({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text(
          "Units and Measurements",
          style: GoogleFonts.aBeeZee(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          UnitsDimensionalFormula(),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 145, imageName: "unit1.png"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 105, imageName: "unit2.png"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 240, imageName: "unit3.png"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
