import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_ratings_model.freezed.dart';
part 'product_ratings_model.g.dart';

@freezed
class ProductRatingsModel with _$ProductRatingsModel{
  @JsonSerializable(explicitToJson: true)
  const factory ProductRatingsModel({
    required num rate,
    required int count,
  }) = _ProductRatingsModel;

  factory ProductRatingsModel.fromJson(Map<String, dynamic> json ) => _$ProductRatingsModelFromJson(json);
}