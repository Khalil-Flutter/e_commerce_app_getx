import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/colors/app_colors.dart';

class LastTextButton extends StatelessWidget {
  const LastTextButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account? ",
          style: GoogleFonts.sourceSans3(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: onTap,
          child: Text(
            "Sign In",
            style: GoogleFonts.sourceSans3(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
