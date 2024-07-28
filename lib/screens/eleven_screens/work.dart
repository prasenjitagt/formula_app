import 'package:flutter/material.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';
import 'package:formula_app/widgets/gap.dart';
import 'package:formula_app/widgets/my_divider.dart';
import 'package:formula_app/widgets/unit_double_tap_widget.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
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
        title: const CustomAppBarTitle(titleText: "Work, Energy and Power"),
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
            "WORK DONE",
            style: TextStyle(
                fontFamily: "lato", fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Gap(20),
          DoubleTapWidget(imageHeight: 260, imageName: "work1.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 200, imageName: "work2.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 150, imageName: "work3.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 250, imageName: "work4.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 300, imageName: "work5.jpg"),
          Gap(10),
          MyDivider(dividerText: "WORK DONE BY DIFFERENT FORCES"),
          DoubleTapWidget(imageHeight: 350, imageName: "work6.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 350, imageName: "work7.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 400, imageName: "work10.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 300, imageName: "work8.jpg"),
          Gap(10),
          MyDivider(dividerText: "WORK DONE BY MULTIPLE FORCES"),
          DoubleTapWidget(imageHeight: 400, imageName: "work9.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 400, imageName: "work11.jpg"),
          Gap(10),
          MyDivider(dividerText: "ENERGY"),
          DoubleTapWidget(imageHeight: 400, imageName: "work12.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 400, imageName: "work13.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 400, imageName: "work14.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 200, imageName: "work15.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 300, imageName: "work16.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 350, imageName: "work17.jpg"),
          Gap(10),
          MyDivider(dividerText: "EQUILIBIRUM"),
          DoubleTapWidget(imageHeight: 80, imageName: "work18.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 500, imageName: "work19.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 500, imageName: "work20.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 500, imageName: "work21.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 170, imageName: "work22.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 350, imageName: "work23.jpg"),
          Gap(10),
          MyDivider(dividerText: "POWER"),
          DoubleTapWidget(imageHeight: 200, imageName: "work24.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 250, imageName: "work25.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 300, imageName: "work26.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 300, imageName: "work27.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 200, imageName: "work28.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 200, imageName: "work29.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 380, imageName: "work30.jpg"),
          Gap(10),
          MyDivider(dividerText: "COLLISION"),
          DoubleTapWidget(imageHeight: 70, imageName: "work31.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 250, imageName: "work32.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 200, imageName: "work33.jpg"),
          Gap(10),
          MyDivider(dividerText: "  TYPES OF COLLISION"),
          DoubleTapWidget(imageHeight: 200, imageName: "work34.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 130, imageName: "work35.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 300, imageName: "work36.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 300, imageName: "work36.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 250, imageName: "work37.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 160, imageName: "work38.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 300, imageName: "work39.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 300, imageName: "work40.jpg"),
          Gap(10),
          MyDivider(dividerText: "INELASTIC COLLISION"),
          DoubleTapWidget(imageHeight: 250, imageName: "work41.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 300, imageName: "work42.jpg"),
          Gap(10),
          DoubleTapWidget(imageHeight: 200, imageName: "work43.jpg"),
          Gap(10),
        ],
      ),
    );
  }
}
