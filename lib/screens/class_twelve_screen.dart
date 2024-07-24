import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tex_text/tex_text.dart';

class ClassTwelveScreen extends StatelessWidget {
  const ClassTwelveScreen({super.key, required this.appBarTitle});
  final String appBarTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: GoogleFonts.aBeeZee(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Center(child: TexText(r"$\frac{a}{\sqrt{b}}$")),
    );
  }
}
