import 'package:e_commerce_app_getx/res/colors/app_colors.dart';
import 'package:e_commerce_app_getx/view/home/components/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../controller/favourite_controller.dart';
import '../../../model/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final favController = Get.put(FavouriteController());
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: DetailsScreen(product: product),
          withNavBar: false,
        );
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Hero(
                    tag: product.image,
                    child: Image.asset(
                      product.image,
                      height: 140,
                      width: 140,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    product.title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '\$${product.price}',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: List.generate(product.colors.length, (index) {
                        return Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            color: product.colors[index],
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ],
            ),
          ),
          Obx(() {
            return Positioned(
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      favController.toggleFavourite(product);
                    },
                    child: Icon(
                      favController.isExist(product)
                          ? Iconsax.heart5
                          : Iconsax.heart,
                      color: favController.isExist(product)
                          ? Colors.red
                          : Colors.white,
                      size: 22,
                    ),
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
