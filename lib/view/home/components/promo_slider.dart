import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app_getx/controller/home_controller.dart';
import 'package:e_commerce_app_getx/view/home/components/circular_container.dart';
import 'package:e_commerce_app_getx/view/home/components/slider_with_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/colors/app_colors.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) {
              controller.carouselCurrentIndex(index);
            },
          ),
          items: const [
            SliderWithBanners(
              image: "assets/images/banners/banners_1.jpeg",
            ),
            SliderWithBanners(image: "assets/images/banners/banners_2.jpeg"),
            SliderWithBanners(image: "assets/images/banners/banners_3.jpeg"),
          ],
        ),
        const SizedBox(height: 10),
        Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                CircularContainer(
                  width: 20,
                  height: 5,
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? AppColors.primaryColor
                      : Colors.grey,
                  margin: const EdgeInsets.only(right: 5),
                )
            ],
          );
        })
      ],
    );
  }
}
