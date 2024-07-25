import 'package:flutter/material.dart';
import 'package:formula_app/widgets/units_dimesional_formula.dart';
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
          InteractiveViewer(
              maxScale: 2.0,
              child: Image.asset(
                "assets/images/unit1.png",
                height: 145,
              )),
          SizedBox(height: 10),
          InteractiveViewer(
            maxScale: 2.0,
            child: Image.asset(
              "assets/images/unit2.png",
              height: 105,
            ),
          ),
          SizedBox(height: 10),
          InteractiveViewer(
            maxScale: 2.0,
            child: Image.asset(
              "assets/images/unit3.png",
              height: 240,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
