import 'package:flutter/material.dart';
import 'package:formula_app/models/chapter_name_model.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTileForChapters extends StatelessWidget {
  const ListTileForChapters({super.key, required this.chapterDetails});
  final ChapterNameModel chapterDetails;

  void goToChapterPage() {}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Image.asset(
                  'assets/images/${chapterDetails.ChapterImageName}',
                  width: 35,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                chapterDetails.ChapterName,
                style: GoogleFonts.exo2(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            trailing: Text(
              "${chapterDetails.ChapterNumber}",
              style: GoogleFonts.exo(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            tileColor: Color.fromARGB(164, 160, 246, 252),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) =>
                      chapterDetails.ChapterPageWidget as Widget));
            }),
        Divider(
          color: Colors.transparent,
          height: 21,
        )
      ],
    );
  }
}
