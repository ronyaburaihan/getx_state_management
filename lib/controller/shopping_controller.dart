import 'package:get/state_manager.dart';
import 'package:getx_state_management/model/product_item.dart';

class ShoppingController extends GetxController {
  var productList = <ProductItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(const Duration(seconds: 1));
    var products = [
      ProductItem(
          id: 1,
          productName: "First Product",
          productImage: "https://img.freepik.com/free-vector/white-product-podium-with-green-tropical-palm-leaves-golden-round-arch-green-wall_87521-3023.jpg",
          productDescription: "Product Description",
          price: 20),
      ProductItem(
          id: 2,
          productName: "Second Product",
          productImage: "https://static.vecteezy.com/system/resources/previews/004/243/566/non_2x/3d-background-product-display-podium-scene-with-cloud-geometric-platform-cloud-background-3d-render-with-podium-stand-to-show-cosmetic-product-stage-showcase-on-pedestal-display-blue-studio-free-vector.jpg",
          productDescription: "Product Description",
          price: 40),
      ProductItem(
          id: 3,
          productName: "Third Product",
          productImage: "https://www.creativefabrica.com/wp-content/uploads/2021/07/01/3d-podium-product-display-background-Graphics-14126338-1.jpg",
          productDescription: "Product Description",
          price: 55)
    ];

    productList.value = products;
  }
}
