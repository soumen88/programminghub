import 'package:flutter/material.dart';
import 'package:programminghub/models/shopping_products_model.dart';

class ProductItemCard extends StatelessWidget{
  ShoppingProductsModel currentCardData;
  Function(int productId) onProductClick;
  ProductItemCard({required this.currentCardData, required this.onProductClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onProductClick(currentCardData.productId);
      },
      child: Card(
        shape: OutlineInputBorder(
          borderSide: BorderSide(
              width: 2
          ),
        ),
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Category: ${currentCardData.category}"),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Rating: ${currentCardData.productRatingsModel.rate}"),
                ),
                Stack(
                  children: [
                    Image.network(currentCardData.imageUrl),
                    Positioned(
                        bottom: 20,
                        right: 20,
                        child: Container(
                          padding: EdgeInsets.only(left: 6, right: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white
                          ),
                          child: Text(
                            "20% off",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 24
                            ),
                          ),
                        )
                    )
                  ],
                ),
                Text(
                  currentCardData.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Price: ${currentCardData.price}",
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }

}