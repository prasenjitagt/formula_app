import 'package:flutter/material.dart';
import 'package:formula_app/models/scroll_to_bottom.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';
import 'package:formula_app/widgets/gap.dart';
import 'package:formula_app/widgets/double_tap_to_zoom_network_widget.dart';
import 'package:formula_app/widgets/my_divider.dart';
import 'package:formula_app/widgets/thermo_equations_part_one.dart';

class Thermodynamics extends StatefulWidget {
  const Thermodynamics({super.key, required this.appBarTitleText});
  final String appBarTitleText;
  @override
  State<Thermodynamics> createState() => _ThermodynamicsState();
}

class _ThermodynamicsState extends State<Thermodynamics> {
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
            DoubleTapToZoomNetworkWidget(
                imageHeight: 220, imageName: "thermo1.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "thermo2.jpg"),
            Gap(10),
            MyDivider(dividerText: "THERMODYNAMIC PROCESSES"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "thermo3.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "thermo4.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 500, imageName: "thermo5.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 200, imageName: "thermo6.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 450, imageName: "thermo7.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 200, imageName: "thermo8.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 500, imageName: "thermo9.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "thermo10.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "thermo11.jpg"),
            Gap(10),
            ThermoEquationsPartOne(),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 200, imageName: "thermo12.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "thermo13.jpg"),
            Gap(10),
            MyDivider(dividerText: "WORK DONE FROM P-V GRAPH"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "thermo14.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 380, imageName: "thermo15.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 380, imageName: "thermo16.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 380, imageName: "thermo17.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 550, imageName: "thermo18.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "thermo19.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 430, imageName: "thermo20.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 220, imageName: "thermo21.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 430, imageName: "thermo22.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 430, imageName: "thermo23.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 430, imageName: "thermo24.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 520, imageName: "thermo25.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "thermo26.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 520, imageName: "thermo27.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "thermo28.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 230, imageName: "thermo29.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 230, imageName: "thermo30.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "thermo31.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 800, imageName: "thermo32.jpg"),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
