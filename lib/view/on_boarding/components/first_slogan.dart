import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/colors/app_colors.dart';

class FirstSlogan extends StatelessWidget {
  const FirstSlogan({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Find Your Joy",
            style: GoogleFonts.sourceSans3(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryButtonColor,
            ),
          ),
          TextSpan(
            text: " - Every Click Brings You Closer.",
            style: GoogleFonts.sourceSans3(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
