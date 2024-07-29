import 'package:flutter/material.dart';
import 'package:formula_app/models/scroll_to_bottom.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';
import 'package:formula_app/widgets/double_tap_to_zoom_widget.dart';
import 'package:formula_app/widgets/gap.dart';
import 'package:formula_app/widgets/my_divider.dart';

class Gravitation extends StatefulWidget {
  const Gravitation({super.key, required this.appBarTitleText});
  final String appBarTitleText;
  @override
  State<Gravitation> createState() => _GravitationState();
}

class _GravitationState extends State<Gravitation> {
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
    ScrollToBottom().scrollToBottom(_myScrollController);
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
              "NEWTON'S LAW OF GRAVITATION",
              style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Gap(20),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "grv1.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "grv2.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "grv3.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 200, imageName: "grv4.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 280, imageName: "grv5.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 280, imageName: "grv6.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 250, imageName: "grv7.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 230, imageName: "grv8.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 180, imageName: "grv9.jpg"),
            Gap(10),
            MyDivider(
                dividerText:
                    "VARIATION IN THE VALUE OF\nACCELERATION DUE TO GRAVITY"),
            DoubleTapToZoomWidget(imageHeight: 320, imageName: "grv10.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 250, imageName: "grv11.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 320, imageName: "grv12.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 380, imageName: "grv13.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 480, imageName: "grv14.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 380, imageName: "grv15.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 280, imageName: "grv16.jpg"),
            Gap(10),
            MyDivider(dividerText: "GRAPH FOR K.E, P.E AND T.E"),
            DoubleTapToZoomWidget(imageHeight: 250, imageName: "grv17.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 450, imageName: "grv18.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 450, imageName: "grv19.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "grv20.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 480, imageName: "grv21.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 320, imageName: "grv22.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 180, imageName: "grv23.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 280, imageName: "grv24.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 320, imageName: "grv25.jpg"),
            Gap(10),
            MyDivider(dividerText: "KEPLER'S LAW OF PLANETARY MOTION"),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "grv26.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 520, imageName: "grv27.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 320, imageName: "grv28.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 480, imageName: "grv29.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 480, imageName: "grv30.jpg"),
            Gap(10),
            MyDivider(
                dividerText:
                    "GRAVITATIONAL FIELD INTENSITY\nDUE TO A SPHERICAL SHELL"),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "grv31.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "grv32.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 250, imageName: "grv33.jpg"),
            Gap(10),
            MyDivider(
                dividerText:
                    "GRAVITATIONAL FIELD INTENSITY\nDUE TO A SOLID SPHERE"),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "grv34.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 250, imageName: "grv35.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 200, imageName: "grv36.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 200, imageName: "grv37.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 200, imageName: "grv38.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 420, imageName: "grv39.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "grv40.jpg"),
            Gap(10),
            MyDivider(
                dividerText: "GRAVITATIONAL POTENTIAL\nDUE TO A SOLID SPHERE"),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "grv41.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "grv42.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "grv43.jpg"),
            Gap(10),
            MyDivider(
                dividerText: "GRAVITATIONAL POTENTIAL\nDUE TO A HOLLOW SPHERE"),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "grv44.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "grv45.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "grv46.jpg"),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
