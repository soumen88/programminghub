import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:programminghub/bottomsheetnavigation/first/first_page_cubit.dart';
import 'package:programminghub/bottomsheetnavigation/first/states/first_page_states.dart';
import 'package:programminghub/repository/api_repository.dart';

import '../../models/shopping_products_model.dart';

///This is the student class which obeys to all commands from teacher
@RoutePage()
class FirstPage extends StatelessWidget{
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
                return Container();
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