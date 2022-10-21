import 'package:flutter/material.dart';
import 'package:getx_state_management/model/product_item.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductItem productItem;
  final VoidCallback? buttonClicked;

  const ProductItemWidget(
      {Key? key, required this.productItem, required this.buttonClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            productItem.productImage,
            height: 100,
            width: 150,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productItem.productName,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  productItem.productDescription,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "\$${productItem.price}",
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              MaterialButton(
                onPressed: buttonClicked,
                color: Colors.blue,
                child: const Text(
                  "Add to cart",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
