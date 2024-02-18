import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'models/shopping_product_model.dart';


class ProductDescriptionScreen extends StatelessWidget{
  ShoppingProductModel shoppingProductModel;

  ProductDescriptionScreen({required this.shoppingProductModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(shoppingProductModel.title),
      ),
    );
  }

}