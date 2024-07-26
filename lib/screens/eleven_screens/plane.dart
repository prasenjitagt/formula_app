import 'package:flutter/material.dart';
import 'package:formula_app/widgets/my_divider.dart';
import 'package:formula_app/widgets/unit_double_tap_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Plane extends StatefulWidget {
  const Plane({super.key});

  @override
  State<Plane> createState() => _PlaneState();
}

class _PlaneState extends State<Plane> {
  // this variable determnines whether the back-to-top button is shown or not
  bool _showBackToTopButton = false;

  // scroll controller
  late ScrollController _myScrollController;

  @override
  void initState() {
    _myScrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _myScrollController.offset >= 400
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
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text(
          "Motion in a Plane",
          style: GoogleFonts.aBeeZee(fontSize: 18),
        ),
        centerTitle: true,
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              backgroundColor: Color.fromARGB(113, 255, 255, 255),
              onPressed: _scrollToTop,
              child: const Icon(Icons.arrow_upward),
            ),
      body: ListView(
        controller: _myScrollController,
        children: [
          SizedBox(height: 10),
          Text(
            "VECTORS",
            style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          DoubleTapWidget(imageHeight: 260, imageName: "plane1.png"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 320, imageName: "plane2.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 280, imageName: "plane3.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 300, imageName: "plane4.png"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 300, imageName: "plane5.jpg"),
          MyDivider(dividerText: "PROJECTILE MOTION"),
          SizedBox(height: 20),
          DoubleTapWidget(imageHeight: 400, imageName: "plane6.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 260, imageName: "plane7.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 400, imageName: "plane8.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 400, imageName: "plane9.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "RELATIVE MOTION"),
          SizedBox(height: 20),
          DoubleTapWidget(imageHeight: 200, imageName: "plane10.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 200, imageName: "plane11.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 200, imageName: "plane12.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 300, imageName: "plane13.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 260, imageName: "plane14.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 230, imageName: "plane15.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 300, imageName: "plane16.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 300, imageName: "plane17.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "MAN RAIN PROBLEM"),
          SizedBox(height: 20),
          DoubleTapWidget(imageHeight: 300, imageName: "plane18.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 350, imageName: "plane19.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 1100, imageName: "plane20.jpg"),
          SizedBox(height: 10),
          MyDivider(dividerText: "CIRCULAR MOTION"),
          DoubleTapWidget(imageHeight: 350, imageName: "plane21.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 550, imageName: "plane22.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 700, imageName: "plane23.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 700, imageName: "plane24.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 530, imageName: "plane25.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 400, imageName: "plane26.jpg"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
