import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programminghub/base/logger_utils.dart';
import 'package:programminghub/bottomsheetnavigation/first/first_page_cubit.dart';
import 'package:programminghub/bottomsheetnavigation/first/product_item_card.dart';
import 'package:programminghub/bottomsheetnavigation/first/states/first_page_states.dart';
import 'package:programminghub/repository/api_repository.dart';
import 'package:programminghub/routing/app_router.dart';

import '../../models/shopping_products_model.dart';

///This is the student class which obeys to all commands from teacher
@RoutePage()
class FirstPage extends StatelessWidget{
  final _logger = LoggerUtils();
  final _TAG = "FirstPage";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FirstPageCubit(),
      child: BlocConsumer<FirstPageCubit, FirstPageStates>(
        listener: (BuildContext context, FirstPageStates states){

        },
        builder: (BuildContext context, FirstPageStates states){
          return states.when(
              loading: (){
                return Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
              displayProductList: (List<ShoppingProductsModel> productList){
                return Scaffold(
                  body: ListView.builder(
                      itemCount: productList.length,
                      itemBuilder: (BuildContext context, int index){
                        ShoppingProductsModel productsModel = productList[index];
                        return ProductItemCard(
                            currentCardData: productsModel,
                            onProductClick: (int productId){
                              _logger.log(TAG: _TAG, message: "User has clicked on id $productId");
                              context.router.navigate(ProductDescRoute(selectedProductData: productsModel));
                            },
                        );
                      }
                  ),
                );
              },
              error: (String? errorMessage){
                return Container(
                  child: Text(
                      errorMessage ?? '',
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.red
                      ),
                  ),
                );
              }
          );
        },
      ),
    );
  }

}