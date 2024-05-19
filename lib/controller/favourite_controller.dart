import 'package:get/get.dart';

import '../model/product_model.dart';

class FavouriteController extends GetxController {
  static FavouriteController get instance => Get.find();
  RxList favouriteItems = <Product>[].obs;

  RxList get favouriteItem => favouriteItems;

  void toggleFavourite(Product product) {
    if (favouriteItems.contains(product)) {
      favouriteItems.remove(product);
    } else {
      favouriteItems.add(product);
    }
  }

  bool isExist(Product product) {
    final isExist = favouriteItems.contains(product);
    return isExist;
  }

  void removeFavourite(
    Product product,
  ) {
    favouriteItems.remove(product);
  }
}
