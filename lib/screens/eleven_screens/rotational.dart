import 'package:flutter/material.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';
import 'package:formula_app/widgets/gap.dart';
import 'package:formula_app/widgets/double_tap_to_zoom_network_widget.dart';
import 'package:formula_app/widgets/my_divider.dart';

class Rotational extends StatefulWidget {
  const Rotational({super.key, required this.appBarTitleText});
  final String appBarTitleText;
  @override
  State<Rotational> createState() => _RotationalState();
}

class _RotationalState extends State<Rotational> {
  // this variable determnines whether the back-to-top button is shown or not
  bool _showBackToTopButton = false;
  // scroll controller
  late ScrollController _myScrollController;

  @override
  void initState() {
    _myScrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _myScrollController.offset >= 800
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
          backgroundColor: const Color.fromARGB(113, 255, 255, 255),
          onPressed: _showBackToTopButton ? _scrollToTop : _scrollToBottom,
          child: _showBackToTopButton
              ? const Icon(Icons.arrow_upward)
              : const Icon(Icons.arrow_downward)),
      body: SingleChildScrollView(
        controller: _myScrollController,
        child: const Column(
          children: [
            Gap(10),
            Text(
              "CENTRE OF MASS",
              style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 220, imageName: "rot1.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "rot2.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 400, imageName: "rot3.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 380, imageName: "rot4.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 400, imageName: "rot5.jpg"),
            Gap(10),
            MyDivider(
                dividerText:
                    "CENTRE OF MASS FOR VARIOUS SHAPES\nWITH UNIFORMLY  DISTRIBUTED MASS"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "rot6.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "rot7.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "rot8.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "rot9.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "rot10.jpg"),
            Gap(10),
            MyDivider(dividerText: "MOMENT OF INERTIA"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "rot11.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "rot12.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "rot13.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 380, imageName: "rot14.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 380, imageName: "rot15.jpg"),
            Gap(10),
            MyDivider(dividerText: "THEOREMS"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 550, imageName: "rot16.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "rot17.jpg"),
            Gap(10),
            MyDivider(dividerText: "MOMENT OF INERTIA\nFOR VARIOUS OBJECTS"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "rot18.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "rot21.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 450, imageName: "rot19.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 450, imageName: "rot20.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "rot22.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 400, imageName: "rot23.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "rot24.jpg"),
            Gap(10),
            MyDivider(
                dividerText:
                    "MOMENT OF INERTIA\nALONG THE CENTRE OF MASS\nAND\nPERPENDICULAR TO THE PLANE SURFACE"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 330, imageName: "rot25.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "rot26.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "rot27.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "rot28.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 450, imageName: "rot29.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 450, imageName: "rot30.jpg"),
            Gap(10),
            MyDivider(dividerText: "EQUILIBRIUM"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 220, imageName: "rot31.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 220, imageName: "rot32.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 220, imageName: "rot33.jpg"),
            Gap(10),
            MyDivider(dividerText: "PRICIPLE OF MOMENTS"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "rot34.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "rot35.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "rot36.jpg"),
            Gap(10),
            MyDivider(dividerText: "ANGULAR ACCELERATION"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 200, imageName: "rot37.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "rot38.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "rot39.jpg"),
            Gap(10),
            MyDivider(dividerText: "ANGULAR MOMENTUM\nAND\nITS CONSERVATION"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "rot40.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "rot41.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 400, imageName: "rot42.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 400, imageName: "rot45.jpg"),
            Gap(10),
            MyDivider(
                dividerText: "MOMENT OF INERTIA\nWHEN\nTWO DISKS ARE JOINED"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 500, imageName: "rot43.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 500, imageName: "rot44.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 220, imageName: "rot46.jpg"),
            Gap(10),
            MyDivider(dividerText: "WORK, ENERGY & POWER IN ROTATION"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "rot47.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "rot48.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 450, imageName: "rot49.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 240, imageName: "rot50.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "rot51.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "rot52.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "rot53.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "rot54.jpg"),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
