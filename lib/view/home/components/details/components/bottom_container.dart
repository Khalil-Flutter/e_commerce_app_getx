import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../controller/add_to_cart_controller.dart';
import '../../../../../model/product_model.dart';
import '../../../../../res/colors/app_colors.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
    required this.product,
    required this.cartController,
  });

  final Product product;
  final CartController cartController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Total Price",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                cartController.addToCart(product);
              },
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.bag_25,
                      color: Colors.white,
                    ),
                    Text(
                      "Add to Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
