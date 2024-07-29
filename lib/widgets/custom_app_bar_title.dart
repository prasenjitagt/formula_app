import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({
    super.key,
    required this.titleText,
  });
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titleText,
          style: const TextStyle(fontFamily: 'aBeeZee', fontSize: 18),
        ),
        Text(
          "(Double Tap to Zoom Images)",
          style: TextStyle(
              fontFamily: 'aBeeZee',
              fontSize: 12,
              color: Colors.redAccent.shade700),
        ).animate().shakeX(
              duration: 1000.ms,
              hz: 2,
            )
      ],
    );
  }
}
