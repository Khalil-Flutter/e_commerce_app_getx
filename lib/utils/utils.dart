import 'package:e_commerce_app_getx/res/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils {
  // fieldFocus
  static void fieldFocus(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

// toastMessage
  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.blackColor,
      textColor: AppColors.whiteColor,
      gravity: ToastGravity.BOTTOM,
    );
  }

// snackBar
  static snackBar(String title, String message) {
    Get.snackbar(title, message);
  }
}
