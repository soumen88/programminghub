import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_products_model.freezed.dart';
part 'shopping_products_model.g.dart';

@freezed
class ShoppingProductsModel with _$ShoppingProductsModel{
  @JsonSerializable(explicitToJson: true)
  const factory ShoppingProductsModel({
    @JsonKey(name: "id")
    required int productId,
    required String title,
    required num price,
    @JsonKey(name: "description")
    required String productDescription,
    required String category,
    @JsonKey(name: "image")
    required String imageUrl,
  }) = _ShoppingProductsModel;

  factory ShoppingProductsModel.fromJson(Map<String, dynamic> json ) => _$ShoppingProductsModelFromJson(json);
}