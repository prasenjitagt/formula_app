import 'package:flutter/material.dart';

class ChapterNameModel {
  const ChapterNameModel({
    required this.ChapterName,
    required this.ChapterNumber,
    required this.ChapterPageWidget,
    required this.ChapterImageName,
  });

  final String ChapterName;
  final String ChapterImageName;
  final int ChapterNumber;
  final Widget? ChapterPageWidget;
}
