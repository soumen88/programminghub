// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShoppingProductsModelImpl _$$ShoppingProductsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ShoppingProductsModelImpl(
      productId: json['id'] as int,
      title: json['title'] as String,
      price: json['price'] as num,
      productDescription: json['description'] as String,
      category: json['category'] as String,
      imageUrl: json['image'] as String,
      productRatingsModel:
          ProductRatingsModel.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShoppingProductsModelImplToJson(
        _$ShoppingProductsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.productId,
      'title': instance.title,
      'price': instance.price,
      'description': instance.productDescription,
      'category': instance.category,
      'image': instance.imageUrl,
      'rating': instance.productRatingsModel.toJson(),
    };
