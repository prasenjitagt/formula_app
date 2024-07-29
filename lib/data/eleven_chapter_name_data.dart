import 'package:formula_app/models/chapter_name_model.dart';
import 'package:formula_app/screens/eleven_screens/fluids.dart';
import 'package:formula_app/screens/eleven_screens/gravitation.dart';
import 'package:formula_app/screens/eleven_screens/ktg.dart';
import 'package:formula_app/screens/eleven_screens/nlm.dart';
import 'package:formula_app/screens/eleven_screens/oscillations.dart';
import 'package:formula_app/screens/eleven_screens/plane.dart';
import 'package:formula_app/screens/eleven_screens/rotational.dart';
import 'package:formula_app/screens/eleven_screens/solids.dart';
import 'package:formula_app/screens/eleven_screens/straight_line.dart';
import 'package:formula_app/screens/eleven_screens/thermal_properties.dart';
import 'package:formula_app/screens/eleven_screens/thermodynamics.dart';
import 'package:formula_app/screens/eleven_screens/units.dart';
import 'package:formula_app/screens/eleven_screens/waves.dart';
import 'package:formula_app/screens/eleven_screens/work.dart';

const elevenChapterDetails = [
  ChapterNameModel(
    chapterName: "Units and Measurement",
    chapterNumber: 1,
    chapterImageName: "11ch1.png",
    chapterPageWidget: Units(
      appBarTitleText: "Units and Measurement",
    ),
  ),
  ChapterNameModel(
    chapterName: "Motion in a Straight Line",
    chapterNumber: 2,
    chapterImageName: "11ch2.png",
    chapterPageWidget: StraightLine(
      appBarTitleText: "Motion in a Straight Line",
    ),
  ),
  ChapterNameModel(
    chapterName: "Motion in a plane",
    chapterNumber: 3,
    chapterImageName: "11ch3.png",
    chapterPageWidget: Plane(
      appBarTitleText: "Motion in a plane",
    ),
  ),
  ChapterNameModel(
    chapterName: "Laws of Motion",
    chapterNumber: 4,
    chapterImageName: "11ch4.png",
    chapterPageWidget: NLM(
      appBarTitleText: "Laws of Motion",
    ),
  ),
  ChapterNameModel(
    chapterName: "Work, Energy and Power",
    chapterNumber: 5,
    chapterImageName: "11ch5.png",
    chapterPageWidget: Work(
      appBarTitleText: "Work, Energy and Power",
    ),
  ),
  ChapterNameModel(
    chapterName: "Rotational Motion",
    chapterNumber: 6,
    chapterImageName: "11ch6.png",
    chapterPageWidget: Rotational(appBarTitleText: "Rotational Motion"),
  ),
  ChapterNameModel(
    chapterName: "Gravitation",
    chapterNumber: 7,
    chapterImageName: "11ch7.png",
    chapterPageWidget: Gravitation(appBarTitleText: "Gravitation"),
  ),
  ChapterNameModel(
    chapterName: "Mechanical Properties of Solids",
    chapterNumber: 8,
    chapterImageName: "11ch8.png",
    chapterPageWidget:
        Solids(appBarTitleText: "Mechanical Properties of Solids"),
  ),
  ChapterNameModel(
    chapterName: "Mechanical Properties of Fluids",
    chapterNumber: 9,
    chapterImageName: "11ch9.png",
    chapterPageWidget:
        Fluids(appBarTitleText: "Mechanical Properties of Fluids"),
  ),
  ChapterNameModel(
    chapterName: "Thermal Properties of Matter",
    chapterNumber: 10,
    chapterImageName: "11ch10.png",
    chapterPageWidget:
        ThermalProperties(appBarTitleText: "Thermal Properties of Matter"),
  ),
  ChapterNameModel(
    chapterName: "Thermodynamics",
    chapterNumber: 11,
    chapterImageName: "11ch11.png",
    chapterPageWidget: Thermodynamics(appBarTitleText: "Thermodynamics"),
  ),
  ChapterNameModel(
    chapterName: "KTG",
    chapterNumber: 12,
    chapterImageName: "11ch12.png",
    chapterPageWidget: KTG(
      appBarTitleText: "KTG",
    ),
  ),
  ChapterNameModel(
    chapterName: "Oscillations",
    chapterNumber: 13,
    chapterImageName: "11ch13.png",
    chapterPageWidget: Oscillations(appBarTitleText: "Oscillations"),
  ),
  ChapterNameModel(
    chapterName: "Waves",
    chapterNumber: 14,
    chapterImageName: "11ch14.png",
    chapterPageWidget: Waves(appBarTitleText: "Waves"),
  ),
];
