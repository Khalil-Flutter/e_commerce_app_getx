import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/colors/app_colors.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
    required this.onPress,
  });

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 90,
          vertical: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        "Let's get Started",
        style: GoogleFonts.sourceSans3(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
