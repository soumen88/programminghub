import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_request_model.freezed.dart';
part 'api_request_model.g.dart';

@freezed
class ApiRequestModel with _$ApiRequestModel{
  @JsonSerializable()
  const factory ApiRequestModel({
    @JsonKey(name: "id")
    @Default(-1)
    int requestId,
    required String title,
    @JsonKey(name: "body")
    required String requestBody,
    required int userId,
  }) = _ApiRequestModel;

  factory ApiRequestModel.fromJson(Map<String, dynamic> json) => _$ApiRequestModelFromJson(json);
}