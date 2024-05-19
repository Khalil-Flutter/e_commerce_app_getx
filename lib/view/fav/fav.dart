import 'package:e_commerce_app_getx/controller/favourite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.arrow_left5),
                ),
                const SizedBox(width: 10),
                const Text(
                  "My Favourite",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Obx(() {
            return Expanded(
              child: ListView.builder(
                itemCount: FavouriteController.instance.favouriteItems.length,
                itemBuilder: (context, index) {
                  final product =
                      FavouriteController.instance.favouriteItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                product.image,
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.15,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.title.toString(),
                                  style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "\$${product.price.toString()}",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade900,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  FavouriteController.instance
                                      .removeFavourite(product);
                                },
                                icon: const Icon(
                                  Iconsax.trash,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          })
        ],
      ),
    );
  }
}
