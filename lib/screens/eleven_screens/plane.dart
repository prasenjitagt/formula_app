import 'package:flutter/material.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';
import 'package:formula_app/widgets/my_divider.dart';
import 'package:formula_app/widgets/double_tap_to_zoom_network_widget.dart';

class Plane extends StatefulWidget {
  const Plane({super.key, required this.appBarTitleText});
  final String appBarTitleText;

  @override
  State<Plane> createState() => _PlaneState();
}

class _PlaneState extends State<Plane> {
  // this variable determnines whether the back-to-top button is shown or not
  bool _showBackToTopButton = false;

  // scroll controller
  late ScrollController _myScrollController;

  @override
  void initState() {
    _myScrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _myScrollController.offset >= 400
              ? _showBackToTopButton = true
              : _showBackToTopButton = false;
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _myScrollController.dispose(); // dispose the controller
    super.dispose();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    _myScrollController.animateTo(0,
        duration: const Duration(milliseconds: 1500), curve: Curves.easeInOut);
  }

  void _scrollToBottom() {
    // var scrollValue = _myScrollController.position.maxScrollExtent;
    _myScrollController.animateTo(20000,
        duration: const Duration(milliseconds: 1500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: CustomAppBarTitle(titleText: widget.appBarTitleText),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.443),
        onPressed: _showBackToTopButton ? _scrollToTop : _scrollToBottom,
        child: _showBackToTopButton
            ? const Icon(Icons.arrow_upward)
            : const Icon(Icons.arrow_downward),
      ),
      body: SingleChildScrollView(
        controller: _myScrollController,
        child: const Column(
          children: [
            SizedBox(height: 10),
            Text(
              "VECTORS",
              style: TextStyle(
                fontFamily: "lato",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 260, imageName: "plane1.png"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 320, imageName: "plane2.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "plane3.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "plane4.png"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "plane5.jpg"),
            MyDivider(dividerText: "PROJECTILE MOTION"),
            SizedBox(height: 20),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 400, imageName: "plane6.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 260, imageName: "plane7.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 400, imageName: "plane8.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 400, imageName: "plane9.jpg"),
            SizedBox(height: 10),
            MyDivider(dividerText: "RELATIVE MOTION"),
            SizedBox(height: 20),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 200, imageName: "plane10.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 200, imageName: "plane11.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 200, imageName: "plane12.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "plane13.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 260, imageName: "plane14.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 230, imageName: "plane15.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "plane16.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "plane17.jpg"),
            SizedBox(height: 10),
            MyDivider(dividerText: "MAN RAIN PROBLEM"),
            SizedBox(height: 20),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "plane18.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "plane19.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 1100, imageName: "plane20.jpg"),
            SizedBox(height: 10),
            MyDivider(dividerText: "CIRCULAR MOTION"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "plane21.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 550, imageName: "plane22.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 700, imageName: "plane23.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 700, imageName: "plane24.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 530, imageName: "plane25.jpg"),
            SizedBox(height: 10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 400, imageName: "plane26.jpg"),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
