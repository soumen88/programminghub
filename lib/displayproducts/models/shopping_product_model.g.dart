// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShoppingProductModelImpl _$$ShoppingProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ShoppingProductModelImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      price: json['price'] as num,
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      productRatingsModel:
          ProductRatingsModel.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShoppingProductModelImplToJson(
        _$ShoppingProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'rating': instance.productRatingsModel.toJson(),
    };
