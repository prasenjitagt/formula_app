import 'package:flutter/material.dart';
import 'package:formula_app/models/scroll_to_bottom.dart';
import 'package:formula_app/widgets/custom_app_bar_title.dart';
import 'package:formula_app/widgets/double_tap_to_zoom_widget.dart';
import 'package:formula_app/widgets/gap.dart';
import 'package:formula_app/widgets/double_tap_to_zoom_network_widget.dart';
import 'package:formula_app/widgets/my_divider.dart';

class Fluids extends StatefulWidget {
  const Fluids({super.key, required this.appBarTitleText});
  final String appBarTitleText;
  @override
  State<Fluids> createState() => _FluidsState();
}

class _FluidsState extends State<Fluids> {
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
              "DENSITY",
              style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 250, imageName: "fluid1.jpg"),
            Gap(10),
            MyDivider(
                dividerText: "MIXING OF LIQUID\nCalculation of final Density"),
            DoubleTapToZoomWidget(imageHeight: 150, imageName: "fluid2.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 230, imageName: "fluid3.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 200, imageName: "fluid4.jpg"),
            Gap(10),
            MyDivider(dividerText: "Relative Density (R.D)/Specific Gravity"),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "fluid5.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 200, imageName: "fluid6.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 160, imageName: "fluid7.jpg"),
            Gap(10),
            MyDivider(dividerText: "PRESSURE"),
            DoubleTapToZoomWidget(imageHeight: 250, imageName: "fluid8.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "fluid9.jpg"),
            Gap(10),
            MyDivider(dividerText: "INCLINED BAROMETER"),
            DoubleTapToZoomWidget(imageHeight: 400, imageName: "fluid10.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 400, imageName: "fluid11.jpg"),
            Gap(10),
            MyDivider(dividerText: "BUBBLE RISING UP\nAT CONSTANT TEMPERATURE"),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "fluid12.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 450, imageName: "fluid13.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 400, imageName: "fluid14.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 700, imageName: "fluid15.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 450, imageName: "fluid16.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 450, imageName: "fluid17.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 550, imageName: "fluid18.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 450, imageName: "fluid19.jpg"),
            Gap(10),
            MyDivider(dividerText: "U-Tube Accelerating Horizontally"),
            DoubleTapToZoomWidget(imageHeight: 650, imageName: "fluid20.jpg"),
            Gap(10),
            MyDivider(dividerText: "Special Case: U-Tube Rotating"),
            DoubleTapToZoomWidget(imageHeight: 500, imageName: "fluid21.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 450, imageName: "fluid22.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 250, imageName: "fluid23.jpg"),
            Gap(10),
            MyDivider(dividerText: "APPLICATION OF PASCAL'S LAW"),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "fluid24.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "fluid25.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 400, imageName: "fluid26.jpg"),
            Gap(10),
            MyDivider(dividerText: "LAW OF FLOATATION"),
            DoubleTapToZoomWidget(imageHeight: 500, imageName: "fluid27.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 500, imageName: "fluid28.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 450, imageName: "fluid29.jpg"),
            Gap(10),
            MyDivider(dividerText: "FRACTIONAL SUBMERGED VOLUME"),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "fluid30.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 180, imageName: "fluid31.jpg"),
            Gap(10),
            MyDivider(
                dividerText:
                    "RELATIVE DENSITY\nOF\nFRACTIONAL SUBMERGED VOLUME"),
            DoubleTapToZoomWidget(imageHeight: 150, imageName: "fluid32.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 150, imageName: "fluid33.jpg"),
            Gap(10),
            MyDivider(dividerText: "NEWTON'S LAW OF VISCOSITY"),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "fluid34.jpg"),
            Gap(10),
            MyDivider(dividerText: "UNIT\nOF\nCOEFFICIENT OF VISCOSITY"),
            DoubleTapToZoomWidget(imageHeight: 200, imageName: "fluid35.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 400, imageName: "fluid36.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 150, imageName: "fluid37.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 380, imageName: "fluid38.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 450, imageName: "fluid39.jpg"),
            Gap(10),
            MyDivider(dividerText: "EQUATION OF CONTINUITY"),
            DoubleTapToZoomWidget(imageHeight: 250, imageName: "fluid40.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 250, imageName: "fluid41.jpg"),
            Gap(10),
            MyDivider(dividerText: "ENERGY OF A FLUID\nIN A STEADY FLOW"),
            DoubleTapToZoomWidget(imageHeight: 280, imageName: "fluid42.jpg"),
            Gap(10),
            MyDivider(dividerText: "BERNOULLI'S PRINCIPLE"),
            DoubleTapToZoomWidget(imageHeight: 400, imageName: "fluid43.jpg"),
            Gap(10),
            MyDivider(dividerText: "APPLICATIONS OF\nBERNOULLI'S PRINCIPLE"),
            DoubleTapToZoomWidget(imageHeight: 700, imageName: "fluid44.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 400, imageName: "fluid45.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 450, imageName: "fluid46.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 450, imageName: "fluid47.jpg"),
            Gap(10),
            MyDivider(
                dividerText:
                    "PRESSURE DIFFERENCE\nACROSS A\nCURVED LIQUID SURFACE"),
            DoubleTapToZoomWidget(imageHeight: 750, imageName: "fluid48.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 450, imageName: "fluid49.jpg"),
            Gap(10),
            MyDivider(dividerText: "SHAPE OF\nLIQUID MENISCUS"),
            DoubleTapToZoomWidget(imageHeight: 580, imageName: "fluid50.jpg"),
            Gap(10),
            MyDivider(dividerText: "CAPILLARITY"),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "fluid51.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 350, imageName: "fluid52.jpg"),
            Gap(10),
            DoubleTapToZoomWidget(imageHeight: 300, imageName: "fluid53.jpg"),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
