import 'package:flutter/material.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';
import 'package:formula_app/widgets/gap.dart';
import 'package:formula_app/widgets/my_divider.dart';
import 'package:formula_app/widgets/unit_double_tap_widget.dart';

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
      body: ListView(
        controller: _myScrollController,
        children: const [
          Gap(10),
          Text(
            "SOME TEXT",
            style: TextStyle(
                fontFamily: "lato", fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          DoubleTapWidget(imageHeight: 220, imageName: "rot1.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 300, imageName: "rot2.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 400, imageName: "rot3.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 380, imageName: "rot4.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 400, imageName: "rot5.jpg"),
          Gap(10),
        ],
      ),
    );
  }
}
