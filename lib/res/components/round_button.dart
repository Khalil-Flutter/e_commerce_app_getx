import 'package:e_commerce_app_getx/res/colors/app_colors.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    this.loading = false,
    required this.text,
    required this.onPress,
    this.width = 60,
    this.height = 40,
    this.textColor = AppColors.primaryTextColor,
    this.buttonColor = AppColors.primaryButtonColor,
  });

  final bool loading;
  final String text;
  final VoidCallback onPress;
  final double width, height;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(
                  color: AppColors.whiteColor,
                ),
              )
            : Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                  ),
                ),
              ),
      ),
    );
  }
}
