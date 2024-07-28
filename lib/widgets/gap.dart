import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap(this.heightOfBox, {super.key});
  final double heightOfBox;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: heightOfBox);
  }
}
