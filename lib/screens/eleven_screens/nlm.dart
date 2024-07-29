import 'package:flutter/material.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';
import 'package:formula_app/widgets/my_divider.dart';
import 'package:formula_app/widgets/double_tap_to_zoom_network_widget.dart';
import 'package:formula_app/models/scroll_to_bottom.dart';
import 'package:formula_app/widgets/gap.dart';

class NLM extends StatefulWidget {
  const NLM({super.key, required this.appBarTitleText});
  final String appBarTitleText;

  @override
  State<NLM> createState() => _NLMState();
}

class _NLMState extends State<NLM> {
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
              "LAWS OF MOTION",
              style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Gap(20),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 260, imageName: "nlm0.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 260, imageName: "nlm1.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 130, imageName: "nlm2.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 260, imageName: "nlm14.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 180, imageName: "nlm3.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 220, imageName: "nlm6.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 220, imageName: "nlm7.jpg"),
            Gap(10),
            MyDivider(dividerText: "TENSION"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 150, imageName: "nlm4.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "nlm5.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "nlm10.jpg"),
            Gap(10),
            MyDivider(dividerText: "PULLEY"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 400, imageName: "nlm8.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "nlm9.jpg"),
            Gap(10),
            MyDivider(dividerText: "LIFT PROBLEMS"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 260, imageName: "nlm11.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "nlm12.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 380, imageName: "nlm13.jpg"),
            Gap(10),
            MyDivider(dividerText: "LIQUID JETS"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 260, imageName: "nlm15.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 180, imageName: "nlm16.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 290, imageName: "nlm17.jpg"),
            Gap(10),
            MyDivider(dividerText: "RELATIVE SLIPPING"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "nlm18.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "nlm19.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "nlm20.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "nlm21.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 400, imageName: "nlm22.jpg"),
            Gap(10),
            MyDivider(dividerText: "IMPULSE"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "nlm23.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "nlm24.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 150, imageName: "nlm25.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 150, imageName: "nlm26.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "nlm27.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 150, imageName: "nlm28.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 150, imageName: "nlm29.jpg"),
            Gap(10),
            MyDivider(dividerText: "FRICTION"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "nlm30.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "nlm31.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "nlm32.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 280, imageName: "nlm33.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 320, imageName: "nlm34.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 320, imageName: "nlm35.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "nlm36.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "nlm36.jpg"),
            Gap(10),
            MyDivider(dividerText: "ANGLE OF REPOSE"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 160, imageName: "nlm37.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 200, imageName: "nlm38.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 180, imageName: "nlm39.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 180, imageName: "nlm40.jpg"),
            Gap(10),
            MyDivider(dividerText: "HORIZONTAL TRUCK BOX"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "nlm41.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 200, imageName: "nlm42.jpg"),
            Gap(10),
            MyDivider(dividerText: "VERTICAL TRUCK BOX"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "nlm43.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 400, imageName: "nlm44.jpg"),
            Gap(10),
            MyDivider(dividerText: "PULLING & PUSHING FORCE"),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 350, imageName: "nlm45.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 250, imageName: "nlm46.jpg"),
            Gap(10),
            DoubleTapToZoomNetworkWidget(
                imageHeight: 300, imageName: "nlm47.jpg"),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
