import 'package:flutter/material.dart';
import 'package:tex_text/tex_text.dart';

class UnitTextWidget extends StatelessWidget {
  const UnitTextWidget({super.key, required this.equationText});
  final String equationText;
  @override
  Widget build(BuildContext context) {
    return TexText(
      equationText,
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }
}
