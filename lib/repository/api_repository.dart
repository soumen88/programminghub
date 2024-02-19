import 'dart:convert';

import 'package:programminghub/base/logger_utils.dart';
import 'package:http/http.dart' as http;
import 'package:programminghub/models/shopping_products_model.dart';

///This class is the view model
class ApiRepository{
  final _logger = LoggerUtils();
  final _TAG = "ApiRepository";

  Future<List<ShoppingProductsModel>> hitServerToGetProducts() async{
    try{
      String url = "https://fakestoreapi.com/products";
      final response = await http.get(Uri.parse(url));
      List<ShoppingProductsModel> productList = [];
      _logger.log(TAG: _TAG, message: "Status code ${response.statusCode}");
      //_logger.log(TAG: _TAG, message: "Response body ${response.body}");
      if(response.statusCode == 200){
        List<dynamic> jsonResponse = jsonDecode(response.body);
        for(var individualProducts in jsonResponse){
          ShoppingProductsModel shoppingProductsModel = ShoppingProductsModel.fromJson(individualProducts);
          _logger.log(TAG: _TAG, message: "Shopping product model $shoppingProductsModel");
          productList.add(shoppingProductsModel);
        }
        return Future.value(productList);
      }
      else{
        return Future.error("Something went wrong");
      }
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Exception $exception");
      return Future.error('Exception $exception');
    }
  }
}