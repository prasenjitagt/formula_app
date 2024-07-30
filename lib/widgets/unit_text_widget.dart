import 'package:flutter/material.dart';
import 'package:tex_text/tex_text.dart';

class EquationTextWidget extends StatelessWidget {
  const EquationTextWidget(
      {super.key, required this.equationText, this.fontSizeOfText = 15});
  final String equationText;
  final double fontSizeOfText;
  @override
  Widget build(BuildContext context) {
    return TexText(
      equationText,
      style: TextStyle(
          fontSize: fontSizeOfText,
          fontWeight: FontWeight.bold,
          fontFamily: "lato"),
    );
  }
}
