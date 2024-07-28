import 'package:flutter/material.dart';
import 'package:formula_app/screens/class_eleven_screen.dart';
import 'package:formula_app/screens/class_twelve_screen.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {super.key,
      required this.titleText,
      required this.logoImgName,
      required this.subTitleText});
  final String titleText;
  final String subTitleText;
  final String logoImgName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.asset(
          'assets/images/$logoImgName',
          width: 35,
        ),
        title: Text(
          titleText,
          style: const TextStyle(
            fontFamily: "lato",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subTitleText,
          style: const TextStyle(
            fontFamily: "lato",
            fontWeight: FontWeight.normal,
          ),
        ),
        tileColor: const Color.fromARGB(164, 160, 246, 252),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) {
              if (titleText == "Class XI") {
                return ClassElevenScreen(
                  appBarTitle: titleText,
                );
              } else {
                return ClassTwelveScreen(
                  appBarTitle: titleText,
                );
              }
            }),
          );
        });
  }
}
