import 'package:e_commerce_app_getx/res/routes/routes_names.dart';
import 'package:e_commerce_app_getx/view/on_boarding/on_boarding_screen.dart';
import 'package:get/get.dart';

import '../../view/bottom_bar/bottom_bar.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.onBoarding,
          page: () => const OnBoardingScreen(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 500),
        ),
        GetPage(
          name: RoutesName.bottomAppBar,
          page: () => const BottomNavBar(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(milliseconds: 500),
        ),
        // GetPage(
        //   name: RoutesName.homeScreen,
        //   page: () => const HomeScreen(),
        //   transition: Transition.rightToLeftWithFade,
        //   transitionDuration: const Duration(milliseconds: 500),
        // ),
      ];
}
