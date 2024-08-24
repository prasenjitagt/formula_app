import 'package:flutter/material.dart';
import 'package:formula_app/models/scroll_to_bottom.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';
import 'package:formula_app/widgets/double_tap_to_zoom_widget.dart';
import 'package:formula_app/widgets/gap.dart';
import 'package:formula_app/widgets/double_tap_to_zoom_network_widget.dart';
import 'package:formula_app/widgets/my_divider.dart';

class ThermalProperties extends StatefulWidget {
  const ThermalProperties({super.key, required this.appBarTitleText});
  final String appBarTitleText;
  @override
  State<ThermalProperties> createState() => _ThermalPropertiesState();
}

class _ThermalPropertiesState extends State<ThermalProperties> {
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
              "TEMPERATURE SCALE",
              style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 120, imageName: "thermal1.jpg"),
            Gap(10),
            MyDivider(dividerText: "LINEAR THERMAL EXPANSION"),
            DoubleTapToZoomWidget(imageHeight: 120, imageName: "thermal2.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 200, imageName: "thermal3.jpg"),
            Gap(10),
            MyDivider(dividerText: "APPLICATIONS OF LINEAR EXPANSION"),
            DoubleTapToZoomWidget(imageHeight: 230, imageName: "thermal4.jpg"),
            Gap(10),
            MyDivider(dividerText: "THERMAL STRESS IN A RIGIDLY FIXED ROD"),
            DoubleTapToZoomWidget(imageHeight: 200, imageName: "thermal5.jpg"),
            Gap(10),
            MyDivider(
                dividerText:
                    "ERROR IN SCALE READING\nDUE TO\nEXPANSION OR CONTRACTION"),
            DoubleTapToZoomWidget(imageHeight: 120, imageName: "thermal6.jpg"),
            Gap(10),
            MyDivider(dividerText: "BIMETALLIC STRIP"),
            DoubleTapToZoomWidget(imageHeight: 220, imageName: "thermal7.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 120, imageName: "thermal8.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 160, imageName: "thermal9.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 195, imageName: "thermal10.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 150, imageName: "thermal11.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 100, imageName: "thermal12.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 320, imageName: "thermal13.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 320, imageName: "thermal14.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 160, imageName: "thermal15.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 140, imageName: "thermal16.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "thermal17.jpg"),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
