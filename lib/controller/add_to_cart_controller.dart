import 'package:e_commerce_app_getx/model/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  static CartController get instance => Get.find();
  var cartItems = <Product>[].obs;

  addToCart(Product product) {
    // Check if the cart already contains the product based on its id
    cartItems.add(product);
  }

  void increaseQuantity(Product product) {
    int index = cartItems.indexOf(product);
    if (index != -1) {
      cartItems[index].quantity++;
      cartItems
          .refresh(); // This will update the UI wherever cartItems is being observed.
    }
  }

  void decreaseQuantity(Product product) {
    int index = cartItems.indexOf(product);
    if (index != -1 && cartItems[index].quantity > 1) {
      cartItems[index].quantity--;
      cartItems
          .refresh(); // This will update the UI wherever cartItems is being observed.
    }
  }

  void removeFromCart(Product product) {
    cartItems.remove(product);
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (Product product in cartItems) {
      totalPrice += product.price * product.quantity;
    }
    return totalPrice;
  }
}
