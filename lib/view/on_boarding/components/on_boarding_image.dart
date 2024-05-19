import 'package:flutter/material.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey,
            width: 0.2,
          ),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/on_boarding.png'),
          ),
        ),
      ),
    );
  }
}
