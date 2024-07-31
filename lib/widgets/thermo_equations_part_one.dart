import 'package:flutter/material.dart';
import 'package:formula_app/widgets/gap.dart';
import 'package:formula_app/widgets/unit_text_widget.dart';

class ThermoEquationsPartOne extends StatefulWidget {
  const ThermoEquationsPartOne({
    super.key,
  });

  @override
  State<ThermoEquationsPartOne> createState() => _ThermoEquationsPartOneState();
}

class _ThermoEquationsPartOneState extends State<ThermoEquationsPartOne> {
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
                  "WORK",
                  style: TextStyle(
                      fontFamily: "lato",
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Gap(10),
              Text(
                "Work Done: Path function",
                style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(10),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: EquationTextWidget(
                    equationText: r"$W = {F.dx} = \int_{}^{}Pdv$"),
              ),
              Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
