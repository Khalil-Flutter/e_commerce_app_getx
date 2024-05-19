import 'package:e_commerce_app_getx/res/routes/routes_names.dart';
import 'package:e_commerce_app_getx/view/on_boarding/components/first_slogan.dart';
import 'package:e_commerce_app_getx/view/on_boarding/components/last_text_button.dart';
import 'package:e_commerce_app_getx/view/on_boarding/components/on_boarding_image.dart';
import 'package:e_commerce_app_getx/view/on_boarding/components/second_slogan.dart';
import 'package:e_commerce_app_getx/view/on_boarding/components/start_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const OnBoardingImage(),
          const Spacer(),
          const FirstSlogan(),
          const Spacer(),
          const SecondSlogan(),
          const Spacer(),
          StartButton(
            onPress: () {
              Get.toNamed(RoutesName.bottomAppBar);
            },
          ),
          const Spacer(),
          LastTextButton(
            onTap: () {},
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
