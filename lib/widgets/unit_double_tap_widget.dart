import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class DoubleTapWidget extends StatefulWidget {
  const DoubleTapWidget(
      {super.key, required this.imageHeight, required this.imageName});
  final double imageHeight;
  final String imageName;
  @override
  State<DoubleTapWidget> createState() => _DoubleTapWidgetState();
}

class _DoubleTapWidgetState extends State<DoubleTapWidget> {
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
        decoration: BoxDecoration(border: Border.all(width: 1)),
        child: InteractiveViewer(
          transformationController: imageTransformationController,
          maxScale: 2.0,
          // child: Image.asset(
          //   "assets/images/${widget.imageName}",
          //   height: widget.imageHeight,
          // ),
          child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: AssetImage("assets/images/${widget.imageName}")),
        ),
      ),
    );
  }
}
