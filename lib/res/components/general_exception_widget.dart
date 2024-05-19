import 'package:e_commerce_app_getx/res/colors/app_colors.dart';
import 'package:e_commerce_app_getx/res/components/round_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralExceptionWidget extends StatelessWidget {
  const GeneralExceptionWidget({
    super.key,
    required this.onPress,
  });

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          SizedBox(height: height * .15),
          const Icon(
            Icons.cloud_off,
            size: 100,
            color: AppColors.redColor,
          ),
          SizedBox(height: height * .15),
          Text(
            "general_exception".tr,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 20,
            ),
          ),
          RoundButton(
            text: "Retry",
            onPress: onPress,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
