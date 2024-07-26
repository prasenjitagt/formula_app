import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
    required this.dividerText,
  });
  final String dividerText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Divider(
            height: 40,
            color: Colors.black,
          ),
        ),
        Text(
          dividerText,
          style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
