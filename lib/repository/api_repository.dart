import 'dart:convert';

import 'package:programminghub/base/logger_utils.dart';
import 'package:http/http.dart' as http;
import 'package:programminghub/bottomsheetnavigation/second/model/api_request_model.dart';
import 'package:programminghub/bottomsheetnavigation/second/model/api_response_model.dart';
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
          //_logger.log(TAG: _TAG, message: "Shopping product model $shoppingProductsModel");
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

  ///POST API call for saving data
  Future<ApiResponseModel> sendDataToServer(ApiRequestModel apiRequestBody) async{
    try{
      String url = "https://jsonplaceholder.typicode.com/posts";
      var jsonBody = jsonEncode(apiRequestBody.toJson());
      _logger.log(TAG: _TAG, message: "Json body $jsonBody");
      final apiRequest = await http.post(
          Uri.parse(url),
          body: jsonBody,
          headers: {
            'Content-type': 'application/json; charset=UTF-8',
          }
      );
      //_logger.log(TAG: _TAG, message: 'Post request status code ${apiRequest.statusCode}');
      var responseJson = jsonDecode(apiRequest.body);
      ApiResponseModel apiResponseModel = ApiResponseModel.fromJson(responseJson);
      _logger.log(TAG: _TAG, message: "Api response model $apiResponseModel");
      return Future.value(apiResponseModel);
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Post request failed $exception");
      return Future.error("Post request failed $exception");
    }
  }

  ///PUT API call for updating data
  Future<ApiResponseModel> putDataToServer(ApiRequestModel apiRequestBody) async{
    try{
      String url = "https://jsonplaceholder.typicode.com/posts/1";
      var jsonBody = jsonEncode(apiRequestBody.toJson());
      _logger.log(TAG: _TAG, message: "Json body $jsonBody");
      final apiRequest = await http.put(
          Uri.parse(url),
          body: jsonBody,
          headers: {
            'Content-type': 'application/json; charset=UTF-8',
          }
      );
      _logger.log(TAG: _TAG, message: 'Put request status code ${apiRequest.statusCode}');
      var responseJson = jsonDecode(apiRequest.body);
      ApiResponseModel apiResponseModel = ApiResponseModel.fromJson(responseJson);
      _logger.log(TAG: _TAG, message: "Api response model $apiResponseModel");
      return Future.value(apiResponseModel);
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Put request failed $exception");
      return Future.error("Post request failed $exception");
    }
  }

  ///Delete API call for updating data
  Future<void> deleteDataOnServer(ApiRequestModel apiRequestBody) async{
    try{
      String url = "https://jsonplaceholder.typicode.com/posts/1";
      var jsonBody = jsonEncode(apiRequestBody.toJson());
      _logger.log(TAG: _TAG, message: "Json body $jsonBody");
      final apiRequest = await http.delete(
          Uri.parse(url),
          body: jsonBody,
          headers: {
            'Content-type': 'application/json; charset=UTF-8',
          }
      );
      _logger.log(TAG: _TAG, message: 'Delete request status code ${apiRequest.statusCode}');
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Delete request failed $exception");
      return Future.error("Post request failed $exception");
    }
  }
}