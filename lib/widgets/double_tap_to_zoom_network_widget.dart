import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class DoubleTapToZoomNetworkWidget extends StatefulWidget {
  const DoubleTapToZoomNetworkWidget(
      {super.key, required this.imageHeight, required this.imageName});
  final double imageHeight;
  final String imageName;
  @override
  State<DoubleTapToZoomNetworkWidget> createState() =>
      _DoubleTapToZoomNetworkWidgetState();
}

class _DoubleTapToZoomNetworkWidgetState
    extends State<DoubleTapToZoomNetworkWidget> {
  late TransformationController imageTransformationController;
  TapDownDetails? tapDownDetails;

  late Future<String> _imageURL;
  Future<String> getImageURL(String imageName) async {
    final storageRef = FirebaseStorage.instance.ref().child(imageName);
    String downloadURL = await storageRef.getDownloadURL();
    return downloadURL;
  }

  void _handleDoubleTap() {
    final position = tapDownDetails!.localPosition;
    const double scale = 2;
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
    _imageURL = getImageURL(widget.imageName);
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
        decoration: BoxDecoration(border: Border.all(width: 1)),
        child: InteractiveViewer(
            transformationController: imageTransformationController,
            maxScale: 5.0,
            child: SizedBox(
              height: widget.imageHeight,
              width: double.infinity,
              child: FutureBuilder<String>(
                future: _imageURL,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    // return Image.network(
                    //   snapshot.data!,
                    //   height: widget.imageHeight,
                    // );
                    return CachedNetworkImage(
                      imageUrl: snapshot.data!,
                      height: widget.imageHeight,
                    );

                    // return FadeInImage(
                    //   placeholder: MemoryImage(kTransparentImage),
                    //   image: NetworkImage(snapshot.data!),
                    //   height: widget.imageHeight,
                    // );
                  } else if (snapshot.hasError) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Error Fetching the Image",
                            style: TextStyle(
                                fontFamily: "lato",
                                fontSize: 25,
                                color: Colors.red),
                          ),
                          Expanded(
                            child: Image.asset(
                              "assets/images/image-not-found.gif",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ]);
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            )),
      ),
    );
  }
}
