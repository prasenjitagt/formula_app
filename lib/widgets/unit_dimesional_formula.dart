import 'package:flutter/material.dart';
import 'package:formula_app/widgets/unit_text_widget.dart';

class UnitsDimensionalFormula extends StatefulWidget {
  const UnitsDimensionalFormula({
    super.key,
  });

  @override
  State<UnitsDimensionalFormula> createState() =>
      _UnitsDimensionalFormulaState();
}

class _UnitsDimensionalFormulaState extends State<UnitsDimensionalFormula> {
  late TransformationController imageTransformationController;
  TapDownDetails? tapDownDetails;

  void _handleDoubleTap() {
    final position = tapDownDetails!.localPosition;
    final double scale = 1.5;
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
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(border: Border.all(width: 1)),
        child: InteractiveViewer(
          transformationController: imageTransformationController,
          maxScale: 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "DIMENSIONAL FORMULA",
                  style: TextStyle(fontFamily: "lato", fontSize: 18),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              UnitTextWidget(
                  equationText:
                      r"Pressure = Stress = Young's modulus = $ML^{-1}T^{-2}$"),
              UnitTextWidget(
                  equationText: r"Work = Energy = Torque = $ML^{2}T^{-2}$"),
              UnitTextWidget(equationText: r"Power = $ML^{2}T^{-3}$"),
              UnitTextWidget(
                  equationText:
                      r"Force Constant = Spring Constant = $MT^{-2}$"),
              UnitTextWidget(
                  equationText:
                      r"Gravitational constant = $M^{-1}L^{3}T^{-2}$"),
              UnitTextWidget(equationText: r"Latent Heat = $L^{2}T^{-2}$"),
              UnitTextWidget(
                  equationText:
                      r"Electric Potential = $\frac{P}{I}$ = $ML^{2}T^{-3}A^{-1}$"),
              UnitTextWidget(
                  equationText: r"Resistance = $ML^{2}T^{-3}A^{-2}$"),
              UnitTextWidget(
                  equationText: r"Capacitance = $M^{-1}L^{-2}T^{4}A^{2}$"),
              UnitTextWidget(
                  equationText: r"Permitivity = $M^{-1}L^{-3}T^{4}A^{2}$"),
              UnitTextWidget(
                  equationText:
                      r"Angular Momentum = Planck's Constant = $ML^{2}T^{-1}$"),
            ],
          ),
        ),
      ),
    );
  }
}
