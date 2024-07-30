import 'package:flutter/material.dart';
import 'package:formula_app/widgets/gap.dart';
import 'package:formula_app/widgets/unit_text_widget.dart';

class SolidsEquationsPartTwo extends StatefulWidget {
  const SolidsEquationsPartTwo({
    super.key,
  });

  @override
  State<SolidsEquationsPartTwo> createState() => _SolidsEquationsPartTwoState();
}

class _SolidsEquationsPartTwoState extends State<SolidsEquationsPartTwo> {
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
                  "STRAIN",
                  style: TextStyle(
                      fontFamily: "lato",
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Gap(10),
              EquationTextWidget(
                  equationText:
                      r"$Strain = \frac{\text{Change in Size of the body}}{\text{Original size of the body}}$"),
              Gap(10),
              Text(
                "There are Three Types of Strain:",
                style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(10),
              Text(
                "(a) Longitudinal Strain:",
                style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(5),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: EquationTextWidget(
                  equationText:
                      r"$\frac{\text{Change in length of the body}}{\text{Initial length of the body}} =\frac{\Delta L}{L}$",
                ),
              ),
              Gap(10),
              Text(
                "(b) Volume Strain:",
                style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(5),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: EquationTextWidget(
                  equationText:
                      r"$\frac{\text{Change in volume of the body}}{\text{Original volume of the body}} =\frac{\Delta V}{V}$",
                ),
              ),
              Gap(10),
              Text(
                "(c) Shear Strain:",
                style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(5),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: EquationTextWidget(
                  equationText: r"$\tan\phi=\frac{l}{L}$",
                ),
              ),
              Gap(7),
              Padding(
                padding: EdgeInsets.only(left: 35),
                child: Text(
                  "OR",
                  style: TextStyle(
                    fontFamily: "lato",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Gap(7),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: EquationTextWidget(
                  equationText:
                      r"$\phi=\frac{\text{Displacement of upper face}}{\text{Distance between two faces}}$",
                ),
              ),
              Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
