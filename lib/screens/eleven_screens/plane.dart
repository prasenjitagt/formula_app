import 'package:flutter/material.dart';
import 'package:formula_app/widgets/unit_double_tap_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Plane extends StatelessWidget {
  const Plane({super.key});

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
      body: ListView(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              height: 40,
              color: Colors.black,
            ),
          ),
          Text(
            "PROJECTILE MOTION",
            style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          DoubleTapWidget(imageHeight: 400, imageName: "plane6.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 260, imageName: "plane7.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 400, imageName: "plane8.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 400, imageName: "plane9.jpg"),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              height: 40,
              color: Colors.black,
            ),
          ),
          Text(
            "RELATIVE MOTION",
            style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          DoubleTapWidget(imageHeight: 200, imageName: "plane10.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 200, imageName: "plane11.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 200, imageName: "plane12.jpg"),
          SizedBox(height: 10),
          DoubleTapWidget(imageHeight: 300, imageName: "plane13.jpg"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
