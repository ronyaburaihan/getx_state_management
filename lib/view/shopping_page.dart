import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controller/cart_controller.dart';
import 'package:getx_state_management/controller/shopping_controller.dart';

import '../widget/product_item_widget.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({Key? key}) : super(key: key);

  var shoppingController = Get.put(ShoppingController());
  var cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GetX<ShoppingController>(
              builder: (controller) {
                return ListView.builder(
                  itemCount: shoppingController.productList.length,
                  itemBuilder: (context, index) {
                    return ProductItemWidget(
                        productItem: shoppingController.productList[index],
                        buttonClicked: () {
                          cartController.addToCart(
                              shoppingController.productList[index]);
                        });
                  },
                );
              },
            ),
          ),
          GetX<CartController>(builder: (controller) {
            return Text("Total amount: \$${controller.totalPrice}");
          }),
          const SizedBox(
            height: 100,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.blue,
        label: GetX<CartController>(
          builder: (controller) {
            return Text("${controller.cartList.length}");
          },
        ),
        icon: const Icon(CupertinoIcons.cart),
      ),
    );
  }
}
