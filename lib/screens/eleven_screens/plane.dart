import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tex_text/tex_text.dart';

class Units extends StatelessWidget {
  const Units({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Units and Measurements",
          style: GoogleFonts.aBeeZee(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("DIMENSIONAL FORMULA"),
        ],
      ),
    );
  }
}
