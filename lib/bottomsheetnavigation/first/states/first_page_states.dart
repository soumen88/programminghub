import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/shopping_products_model.dart';

part 'first_page_states.freezed.dart';

@freezed
class FirstPageStates with _$FirstPageStates{
  const factory FirstPageStates.loading() = _Loading;
  const factory FirstPageStates.displayProductList(List<ShoppingProductsModel> productList) = _DisplayProductsList;
  const factory FirstPageStates.error(String? errorMessage) = _Error;
}