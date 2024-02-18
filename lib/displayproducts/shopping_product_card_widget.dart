import 'package:flutter/material.dart';

import '../base/logger_utils.dart';
import 'models/shopping_product_model.dart';

class ShoppingProductCardWidget extends StatelessWidget{
  ShoppingProductModel currentProduct;
  Function(int productId) onProductClick;
  final _logger = LoggerUtils();
  final _TAG = "ShoppingProductCardWidget";
  ShoppingProductCardWidget({required this.currentProduct , required this.onProductClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _logger.log(TAG: _TAG, message: "Product tapped ${currentProduct.id}");
        onProductClick(currentProduct.id);
      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text("Rating ${currentProduct.productRatingsModel.rate}"),
              ),
              Image.network(
                currentProduct.image,
                width: 200,
                height: 200,
              ),
              Text(
                currentProduct.title,
                style: TextStyle(
                    fontSize: 20
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price: ${currentProduct.price}",
                  ),
                  Text(
                    "Count: ${currentProduct.productRatingsModel.count}",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}