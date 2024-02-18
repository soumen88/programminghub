import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/shopping_product_model.dart';

part 'display_product_screen_states.freezed.dart';

@freezed
class DisplayProductScreenStates with _$DisplayProductScreenStates{
  const factory DisplayProductScreenStates.loading() = _DisplayProductLoading;
  const factory DisplayProductScreenStates.error(String? errorMessage) = _DisplayError;
  const factory DisplayProductScreenStates.displayProducts(List<ShoppingProductModel> productList) = _DisplayProductList;
}
