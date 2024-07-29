import 'package:flutter/material.dart';
import 'package:formula_app/data/eleven_chapter_name_data.dart';
import 'package:formula_app/widgets/list_tile_for_chapters.dart';

class ClassElevenScreen extends StatelessWidget {
  const ClassElevenScreen({super.key, required this.appBarTitle});
  final String appBarTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: const TextStyle(fontFamily: 'aBeeZee', fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: elevenChapterDetails.map((eachChapter) {
          return ListTileForChapters(chapterDetails: eachChapter);
        }).toList(),
      ),
    );
  }
}
