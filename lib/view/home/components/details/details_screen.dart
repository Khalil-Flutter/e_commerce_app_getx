import 'package:e_commerce_app_getx/view/home/components/details/components/bottom_container.dart';
import 'package:e_commerce_app_getx/view/home/components/details/components/category_and_rate.dart';
import 'package:e_commerce_app_getx/view/home/components/details/components/details_slider.dart';
import 'package:e_commerce_app_getx/view/home/components/details/components/seller_info.dart';
import 'package:e_commerce_app_getx/view/home/components/details/components/title_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/add_to_cart_controller.dart';
import '../../../../controller/favourite_controller.dart';
import '../../../../controller/home_controller.dart';
import '../../../../model/product_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final favController = Get.put(FavouriteController());
    final cartController = Get.put(CartController());
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailsSlider(
                  product: product,
                  controller: controller,
                  favController: favController,
                ),
                const SizedBox(height: 5),
                CategoryAndRate(product: product),
                const SizedBox(height: 5),
                TitleCategory(product: product),
                SellerInfo(product: product),
                const Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  product.description,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ),
        bottomSheet: BottomContainer(
          product: product,
          cartController: cartController,
        ),
      ),
    );
  }
}
