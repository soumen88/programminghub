import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programminghub/displayproducts/shopping_product_card_widget.dart';
import 'package:programminghub/displayproducts/states/display_product_screen_states.dart';

import 'display_product_screen_cubit.dart';
import 'events/display_products_screen_events.dart';
import 'models/shopping_product_model.dart';


class DisplayProductsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create:(BuildContext context) => DisplayProductScreenCubit(),
        child: BlocConsumer<DisplayProductScreenCubit, DisplayProductScreenStates>(
          listener: (BuildContext context, DisplayProductScreenStates state){

          },
          builder: (BuildContext context, DisplayProductScreenStates state){
            return state.when(
                loading: (){
                  return CircularProgressIndicator();
                },
                error: (String? error){
                   return Text(error ?? "",);
                },
                displayProducts: (List<ShoppingProductModel> productList){

                  return Scaffold(
                    body: ListView.builder(
                        itemCount: productList.length,
                        itemBuilder: (BuildContext context, int index){
                          ShoppingProductModel currentProduct = productList[index];
                          return ShoppingProductCardWidget(
                              currentProduct: currentProduct,
                              onProductClick: (int productId){
                                  ShoppingProductModel userSelectedProduct =  productList[productId-1];

                              },
                          );
                        }
                    ),
                  );
                }
            );
          },
        ),
    );
  }

}