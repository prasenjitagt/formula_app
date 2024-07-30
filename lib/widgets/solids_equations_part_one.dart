import 'package:flutter/material.dart';
import 'package:formula_app/widgets/gap.dart';
import 'package:formula_app/widgets/unit_text_widget.dart';

class SolidsEquationsPartOne extends StatefulWidget {
  const SolidsEquationsPartOne({
    super.key,
  });

  @override
  State<SolidsEquationsPartOne> createState() => _SolidsEquationsPartOneState();
}

class _SolidsEquationsPartOneState extends State<SolidsEquationsPartOne> {
  late TransformationController imageTransformationController;
  TapDownDetails? tapDownDetails;

  void _handleDoubleTap() {
    final position = tapDownDetails!.localPosition;
    const double scale = 1.5;
    final x = -position.dx * (scale - 1);
    final y = -position.dy * (scale - 1);
    final zoomed = Matrix4.identity()
      ..translate(x, y)
      ..scale(scale);
    final value = imageTransformationController.value.isIdentity()
        ? zoomed
        : Matrix4.identity();
    imageTransformationController.value = value;
  }

  @override
  void initState() {
    super.initState();
    imageTransformationController = TransformationController();
  }

  @override
  void dispose() {
    imageTransformationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTapDown: (details) => tapDownDetails = details,
      onDoubleTap: _handleDoubleTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(border: Border.all(width: 1)),
        child: InteractiveViewer(
          transformationController: imageTransformationController,
          maxScale: 2,
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "STRESS",
                  style: TextStyle(
                      fontFamily: "lato",
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Gap(10),
              EquationTextWidget(
                  equationText:
                      r"$Stress = \frac{\text{Internal restoring force}}{\text{Area of cross section}}$"),
              Gap(10),
              Text(
                "There are Three Types of Stress:",
                style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(10),
              Text(
                "(a) Longitudinal Stress (2 Types):",
                style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "(i) Tensile Stress",
                  style: TextStyle(
                    fontFamily: "lato",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "(ii) Compressive Stress",
                  style: TextStyle(
                    fontFamily: "lato",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Gap(3),
              Text(
                "(b) Volume Stress",
                style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "(c) Tangential Stress or Shear Stress",
                style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
