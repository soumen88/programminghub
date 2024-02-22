// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseModelImpl _$$ApiResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiResponseModelImpl(
      postId: json['id'] as int,
      title: json['title'] as String,
      requestBody: json['body'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$$ApiResponseModelImplToJson(
        _$ApiResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.postId,
      'title': instance.title,
      'body': instance.requestBody,
      'userId': instance.userId,
    };
