import 'package:get/get.dart';

import '../model/product_item.dart';

class CartController extends GetxController {
  var cartList = <ProductItem>[].obs;

  double get totalPrice => cartList.fold(0, (sum, item) => sum + item.price);

  addToCart(ProductItem productItem) {
    cartList.add(productItem);
  }
}
