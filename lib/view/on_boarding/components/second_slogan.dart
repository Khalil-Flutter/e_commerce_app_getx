import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSlogan extends StatelessWidget {
  const SecondSlogan({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Explore. Love. Repeat. Dive into a World of Choices! Shop Smart, Live Stylish - Every Find is a Treasure!",
      style: GoogleFonts.sourceSans3(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      ),
    );
  }
}
