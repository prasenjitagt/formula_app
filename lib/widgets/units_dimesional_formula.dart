import 'package:flutter/material.dart';
import 'package:formula_app/widgets/unit_text_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class UnitsDimensionalFormula extends StatelessWidget {
  const UnitsDimensionalFormula({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      // padding: EdgeInsets.only(left: 4, right: 4, bottom: 4),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: InteractiveViewer(
        maxScale: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "DIMENSIONAL FORMULA",
                style: GoogleFonts.lato(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            UnitTextWidget(
                equationText:
                    r"Pressure = Stress = Young's modulus = $ML^{-1}T^{-2}$"),
            UnitTextWidget(
                equationText: r"Work = Energy = Torque = $ML^{2}T^{-2}$"),
            UnitTextWidget(equationText: r"Power = $ML^{2}T^{-3}$"),
            UnitTextWidget(
                equationText: r"Force Constant = Spring Constant = $MT^{-2}$"),
            UnitTextWidget(
                equationText: r"Gravitational constant = $M^{-1}L^{3}T^{-2}$"),
            UnitTextWidget(equationText: r"Latent Heat = $L^{2}T^{-2}$"),
            UnitTextWidget(
                equationText:
                    r"Electric Potential = $\frac{P}{I}$ = $ML^{2}T^{-3}A^{-1}$"),
            UnitTextWidget(equationText: r"Resistance = $ML^{2}T^{-3}A^{-2}$"),
            UnitTextWidget(
                equationText: r"Capacitance = $M^{-1}L^{-2}T^{4}A^{2}$"),
            UnitTextWidget(
                equationText: r"Permitivity = $M^{-1}L^{-3}T^{4}A^{2}$"),
            UnitTextWidget(
                equationText:
                    r"Angular Momentum = Planck's Constant = $ML^{2}T^{-1}$"),
          ],
        ),
      ),
    );
  }
}
