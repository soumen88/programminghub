import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:programminghub/models/shopping_products_model.dart';

@RoutePage()
class ProductDescScreen extends StatelessWidget{
  ShoppingProductsModel selectedProductData;

  ProductDescScreen({required this.selectedProductData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Description"),
      ),
      body: Column(
        children: [
          Image.network(selectedProductData.imageUrl),
          Text(selectedProductData.productDescription)
        ],
      ),
    );
  }
}