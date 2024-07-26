import 'package:flutter/material.dart';
import 'package:formula_app/widgets/unit_text_widget.dart';

class LineMotionEqutions extends StatefulWidget {
  const LineMotionEqutions({
    super.key,
  });

  @override
  State<LineMotionEqutions> createState() => _LineMotionEqutionsState();
}

class _LineMotionEqutionsState extends State<LineMotionEqutions> {
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
                  "EQUATIONS OF MOTION",
                  style: TextStyle(fontFamily: "lato", fontSize: 18),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "(VALID FOR CONSTANT ACCELARTION)",
                  style: TextStyle(
                      fontFamily: "lato",
                      fontSize: 10,
                      fontWeight: FontWeight.w900,
                      color: Colors.red,
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(height: 10),
              UnitTextWidget(equationText: r"(1) $v = u + at$"),
              UnitTextWidget(equationText: r"(2) $s = ut + \frac{1}{2}at^{2}$"),
              UnitTextWidget(equationText: r"(3) $v^{2} = u^{2} + 2as$"),
              UnitTextWidget(
                  equationText: r"(4) $S_{n} = u + \frac{a}{2}(2n-1)$"),
              Text(
                "NOTE",
                style: TextStyle(
                    fontSize: 20, decoration: TextDecoration.underline),
              ),
              Text(
                "(a) In rest condition u = 0",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "(b) If partical stops v = 0",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "(c) velocity increasing means acceleration is +ve",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "(d) velocity decreasing means acceleration is -ve",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
