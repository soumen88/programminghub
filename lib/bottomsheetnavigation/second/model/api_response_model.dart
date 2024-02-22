import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_model.freezed.dart';
part 'api_response_model.g.dart';

@freezed
class ApiResponseModel with _$ApiResponseModel{
  @JsonSerializable()
  const factory ApiResponseModel({
    @JsonKey(name: "id")
    required int postId,
    required String title,
    @JsonKey(name: "body")
    required String requestBody,
    required int userId,
  }) = _ApiResponseModel;

  factory ApiResponseModel.fromJson(Map<String, dynamic> json) => _$ApiResponseModelFromJson(json);
}