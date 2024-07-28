import 'package:flutter/material.dart';

class ChapterNameModel {
  const ChapterNameModel({
    required this.chapterName,
    required this.chapterNumber,
    required this.chapterPageWidget,
    required this.chapterImageName,
  });

  final String chapterName;
  final String chapterImageName;
  final int chapterNumber;
  final Widget chapterPageWidget;
}
