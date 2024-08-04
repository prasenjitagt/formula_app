import 'package:flutter/material.dart';
import 'package:formula_app/models/scroll_to_bottom.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';
import 'package:formula_app/widgets/double_tap_to_zoom_widget.dart';
import 'package:formula_app/widgets/gap.dart';
import 'package:formula_app/widgets/double_tap_to_zoom_network_widget.dart';
import 'package:formula_app/widgets/my_divider.dart';

class KTG extends StatefulWidget {
  const KTG({super.key, required this.appBarTitleText});
  final String appBarTitleText;
  @override
  State<KTG> createState() => _KTGState();
}

class _KTGState extends State<KTG> {
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
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "ktg1.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "ktg2.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "ktg3.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 320, imageName: "ktg4.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 320, imageName: "ktg5.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 120, imageName: "ktg6.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "ktg7.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "ktg8.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "ktg9.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 180, imageName: "ktg10.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 260, imageName: "ktg11.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 260, imageName: "ktg12.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 260, imageName: "ktg13.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 260, imageName: "ktg14.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 100, imageName: "ktg15.jpg"),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
