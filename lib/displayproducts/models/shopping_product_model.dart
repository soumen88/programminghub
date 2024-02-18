import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:programminghub/displayproducts/models/product_ratings_model.dart';

part 'shopping_product_model.freezed.dart';
part 'shopping_product_model.g.dart';

@freezed
class ShoppingProductModel with _$ShoppingProductModel{
  @JsonSerializable( explicitToJson: true)
  const factory ShoppingProductModel({
      required int id,
      required String title,
      required num price,
      required String description,
      required String category,
      required String image,
      @JsonKey(name: "rating")
      required ProductRatingsModel productRatingsModel,
  }) = _ShoppingProductModel;

  factory ShoppingProductModel.fromJson(Map<String, dynamic> json ) => _$ShoppingProductModelFromJson(json);
}