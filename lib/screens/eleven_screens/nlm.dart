import 'package:flutter/material.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';
import 'package:formula_app/widgets/my_divider.dart';
import 'package:formula_app/widgets/unit_double_tap_widget.dart';

class NLM extends StatefulWidget {
  const NLM({super.key});

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
    // var scrollValue = _myScrollController.position.maxScrollExtent;
    _myScrollController.animateTo(20000,
        duration: const Duration(milliseconds: 1500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: CustomAppBarTitle(titleText: "Laws of Motion"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(113, 255, 255, 255),
          onPressed: _showBackToTopButton ? _scrollToTop : _scrollToBottom,
          child: _showBackToTopButton
              ? Icon(Icons.arrow_upward)
              : Icon(Icons.arrow_downward)),
      body: ListView(
        controller: _myScrollController,
        children: [
          SizedBox(height: 10),
          Text(
            "LAWS OF MOTION",
            style: TextStyle(
                fontFamily: "lato", fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          DoubleTapWidget(imageHeight: 260, imageName: "nlm0.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 260, imageName: "nlm1.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 130, imageName: "nlm2.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 260, imageName: "nlm14.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 180, imageName: "nlm3.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 220, imageName: "nlm6.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 220, imageName: "nlm7.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "TENSION"),
          DoubleTapWidget(imageHeight: 150, imageName: "nlm4.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 250, imageName: "nlm5.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 300, imageName: "nlm10.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "PULLEY"),
          DoubleTapWidget(imageHeight: 400, imageName: "nlm8.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 300, imageName: "nlm9.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "LIFT PROBLEMS"),
          DoubleTapWidget(imageHeight: 260, imageName: "nlm11.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 300, imageName: "nlm12.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 380, imageName: "nlm13.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "LIQUID JETS"),
          DoubleTapWidget(imageHeight: 260, imageName: "nlm15.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 180, imageName: "nlm16.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 290, imageName: "nlm17.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "RELATIVE SLIPPING"),
          DoubleTapWidget(imageHeight: 250, imageName: "nlm18.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 250, imageName: "nlm19.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 250, imageName: "nlm20.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 300, imageName: "nlm21.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 400, imageName: "nlm22.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "IMPULSE"),
          DoubleTapWidget(imageHeight: 250, imageName: "nlm23.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 350, imageName: "nlm24.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 150, imageName: "nlm25.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 150, imageName: "nlm26.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 350, imageName: "nlm27.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 150, imageName: "nlm28.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 150, imageName: "nlm29.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "FRICTION"),
          DoubleTapWidget(imageHeight: 300, imageName: "nlm30.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 250, imageName: "nlm31.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 350, imageName: "nlm32.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 280, imageName: "nlm33.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 320, imageName: "nlm34.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 320, imageName: "nlm35.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 250, imageName: "nlm36.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 250, imageName: "nlm36.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "ANGLE OF REPOSE"),
          DoubleTapWidget(imageHeight: 160, imageName: "nlm37.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 200, imageName: "nlm38.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 180, imageName: "nlm39.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 180, imageName: "nlm40.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "HORIZONTAL TRUCK BOX"),
          DoubleTapWidget(imageHeight: 250, imageName: "nlm41.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 200, imageName: "nlm42.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "VERTICAL TRUCK BOX"),
          DoubleTapWidget(imageHeight: 250, imageName: "nlm43.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 400, imageName: "nlm44.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "PULLING & PUSHING FORCE"),
          DoubleTapWidget(imageHeight: 350, imageName: "nlm45.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 250, imageName: "nlm46.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 300, imageName: "nlm47.jpg"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
