import 'dart:convert';


import 'package:http/http.dart' as http;

import '../base/logger_utils.dart';
import '../displayproducts/models/shopping_product_model.dart';
import '../senddatatoserver/models/post_request_model.dart';

class ApiRepository{

  final _logger = LoggerUtils();
  final _TAG = "ApiRepository";

  Future<List<ShoppingProductModel>> hitServerToGetProducts() async{
      String apiUrl = "https://fakestoreapi.com/products";
      try{
        List<ShoppingProductModel> productList = [];
        final apiResponse = await http.get(Uri.parse(apiUrl));
        _logger.log(TAG: _TAG, message: "Status code ${apiResponse.statusCode}");
        if(apiResponse.statusCode == 200){
          List<dynamic> listOfProducts = json.decode(apiResponse.body);
          for(var individualProducts in listOfProducts){
            ShoppingProductModel shoppingProductModel = ShoppingProductModel.fromJson(individualProducts);
            _logger.log(TAG: _TAG, message: "Product id ${shoppingProductModel.title}");
            productList.add(shoppingProductModel);
          }
          return Future.value(productList);
        }
        else{
          return Future.error("No product found in API or you are in a wrong endpoint");
        }
      }
      catch(exception, stackTrace){
        _logger.log(TAG: _TAG, message: "Exception $exception");
        return Future.error("Exception $exception");
      }
  }

  Future<bool> hitServerToPostData(PostRequestModel postRequestModel) async{
    try{
      String apiUrl = "https://jsonplaceholder.typicode.com/posts";
      final jsonBody = jsonEncode(postRequestModel);
      final request = await http.post(
        Uri.parse(apiUrl),
        body: jsonBody,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      );
      _logger.log(TAG: _TAG, message: "Status code ${request.statusCode}");
      _logger.log(TAG: _TAG, message: "Request body ${request.body}");
      if(request.statusCode == 201){
        return Future.value(true);
      }
      else{
        return Future.value(false);
      }
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Exception $exception");
      return Future.error("Exception $exception");
    }
  }

  Future<bool> hitServerToPutData(PostRequestModel postRequestModel) async{
    try{
      String apiUrl = "https://jsonplaceholder.typicode.com/posts/1";
      final jsonBody = jsonEncode(postRequestModel);
      final request = await http.put(
        Uri.parse(apiUrl),
        body: jsonBody,
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
      );
      _logger.log(TAG: _TAG, message: "Status code ${request.statusCode}");
      _logger.log(TAG: _TAG, message: "Request body ${request.body}");
      if(request.statusCode == 200){
        return Future.value(true);
      }
      else{
        return Future.value(false);
      }
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Exception $exception");
      return Future.error("Exception $exception");
    }
  }

  Future<bool> hitServerToDeleteData() async{
    try{
      String apiUrl = "https://jsonplaceholder.typicode.com/posts/1";
      final request = await http.delete(
        Uri.parse(apiUrl),
      );
      _logger.log(TAG: _TAG, message: "Status code ${request.statusCode}");
      if(request.statusCode == 200){
        return Future.value(true);
      }
      else{
        return Future.value(false);
      }
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Exception $exception");
      return Future.error("Exception $exception");
    }
  }

}