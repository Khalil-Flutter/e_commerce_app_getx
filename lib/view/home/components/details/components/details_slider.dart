import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../controller/favourite_controller.dart';
import '../../../../../controller/home_controller.dart';
import '../../../../../model/product_model.dart';
import '../../../../../res/colors/app_colors.dart';
import '../../circular_container.dart';
import '../../slider_with_banner.dart';

class DetailsSlider extends StatelessWidget {
  const DetailsSlider({
    super.key,
    required this.product,
    required this.controller,
    required this.favController,
  });

  final Product product;
  final HomeController controller;
  final FavouriteController favController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              IconButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Iconsax.arrow_left,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              const Text(
                "Product Details",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Obx(
                () {
                  return IconButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                    ),
                    onPressed: () {
                      favController.toggleFavourite(product);
                    },
                    icon: Icon(
                      favController.isExist(product)
                          ? Iconsax.heart5
                          : Iconsax.heart,
                      color: favController.isExist(product)
                          ? Colors.red
                          : AppColors.primaryColor,
                    ),
                  );
                },
              ),
              IconButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Iconsax.share,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              CarouselSlider(
                items: [
                  SliderWithBanners(
                    backGroundColor: Colors.transparent,
                    image: product.image,
                    height: 300,
                  ),
                  SliderWithBanners(
                    backGroundColor: Colors.transparent,
                    image: product.image,
                    height: 300,
                  ),
                  SliderWithBanners(
                    backGroundColor: Colors.transparent,
                    image: product.image,
                    height: 300,
                  ),
                  SliderWithBanners(
                    backGroundColor: Colors.transparent,
                    image: product.image,
                    height: 300,
                  ),
                  SliderWithBanners(
                    backGroundColor: Colors.transparent,
                    image: product.image,
                    height: 300,
                  ),
                ],
                options: CarouselOptions(
                  onPageChanged: (index, _) {
                    controller.carouselCurrentIndex(index);
                  },
                  height: 300,
                  viewportFraction: 1,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Positioned(
                top: 280,
                left: 150,
                bottom: -5,
                child: Obx(
                  () {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 5; i++)
                          CircularContainer(
                            width: 10,
                            height: 5,
                            backgroundColor:
                                controller.carouselCurrentIndex.value == i
                                    ? AppColors.primaryColor
                                    : Colors.grey.shade400,
                            margin: const EdgeInsets.only(right: 5),
                          )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
