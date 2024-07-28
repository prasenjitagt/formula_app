import 'package:flutter/material.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';
import 'package:formula_app/widgets/double_tap_to_zoom_network_widget.dart';
import 'package:formula_app/widgets/unit_dimesional_formula.dart';

class Units extends StatelessWidget {
  const Units({super.key, required this.appBarTitleText});
  final String appBarTitleText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: CustomAppBarTitle(titleText: appBarTitleText),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          UnitsDimensionalFormula(),
          SizedBox(height: 10),
          DoubleTapToZoomNetworkWidget(
              imageHeight: 145, imageName: "unit1.png"),
          SizedBox(height: 10),
          DoubleTapToZoomNetworkWidget(
              imageHeight: 105, imageName: "unit2.png"),
          SizedBox(height: 10),
          DoubleTapToZoomNetworkWidget(
              imageHeight: 240, imageName: "unit3.png"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
