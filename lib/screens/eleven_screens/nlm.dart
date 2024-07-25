import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NLM extends StatelessWidget {
  const NLM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text(
          "Motion in a NLM",
          style: GoogleFonts.aBeeZee(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Text("EQUATIONS OF MOTION", style: GoogleFonts.lato(fontSize: 18)),
        ],
      ),
    );
  }
}
