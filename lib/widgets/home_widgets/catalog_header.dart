import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Catalog App",
          style: TextStyle(
            fontSize: 40,
            color: MyTheme.darkBluishColor,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
        ),
        Text(
          "Trending products",
          style: TextStyle(
            color: MyTheme.darkBluishColor,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
