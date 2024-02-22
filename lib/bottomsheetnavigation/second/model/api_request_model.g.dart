// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiRequestModelImpl _$$ApiRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiRequestModelImpl(
      requestId: json['id'] as int? ?? -1,
      title: json['title'] as String,
      requestBody: json['body'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$$ApiRequestModelImplToJson(
        _$ApiRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.requestId,
      'title': instance.title,
      'body': instance.requestBody,
      'userId': instance.userId,
    };
