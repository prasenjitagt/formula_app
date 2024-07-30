import 'package:flutter/material.dart';
import 'package:formula_app/widgets/gap.dart';
import 'package:formula_app/widgets/unit_text_widget.dart';

class SolidsEquationsPartThree extends StatefulWidget {
  const SolidsEquationsPartThree({
    super.key,
  });

  @override
  State<SolidsEquationsPartThree> createState() =>
      _SolidsEquationsPartThreeState();
}

class _SolidsEquationsPartThreeState extends State<SolidsEquationsPartThree> {
  late TransformationController imageTransformationController;
  TapDownDetails? tapDownDetails;

  TextStyle myTextStyle = const TextStyle(
    fontFamily: "lato",
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );

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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "DETAILS OF ABOVE GRAPH",
                  style: TextStyle(
                    fontFamily: "lato",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Gap(10),
              Text(
                "OA - Hooke's law obeyed",
                style: myTextStyle,
              ),
              const Gap(10),
              Text(
                "A - Proportional limit",
                style: myTextStyle,
              ),
              const Gap(10),
              Text(
                "AB - stress is not proportional to strain but body regains it's original shape and size regains load is removed",
                style: myTextStyle,
              ),
              const Gap(10),
              Text(
                "B - Yield point",
                style: myTextStyle,
              ),
              const Gap(10),
              Text(
                "B to D - Body doesn't regain it's original dimension. Beyond B is plastic region.",
                style: myTextStyle,
              ),
              const Gap(10),
              Text(
                "D - Ultimate stress point",
                style: myTextStyle,
              ),
              const Gap(10),
              Text(
                "Beyond D - large strain is produced even",
                style: myTextStyle,
              ),
              const Gap(10),
              Text(
                "for a small applied force.",
                style: myTextStyle,
              ),
              const Gap(10),
              Text(
                "E - Fracture occurs",
                style: myTextStyle,
              ),
              const Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
