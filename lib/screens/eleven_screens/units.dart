import 'package:flutter/material.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';
import 'package:formula_app/widgets/unit_double_tap_widget.dart';
import 'package:formula_app/widgets/unit_dimesional_formula.dart';

class Units extends StatelessWidget {
  const Units({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: CustomAppBarTitle(titleText: "Units and Measurements"),
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
