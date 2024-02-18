import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_request_model.freezed.dart';
part 'post_request_model.g.dart';

@freezed
class PostRequestModel with _$PostRequestModel{
  @JsonSerializable( explicitToJson: true)
  const factory PostRequestModel({
    required int id,
    required String title,
    required String body,
    required int userId,
  }) = _PostRequestModel;

  factory PostRequestModel.fromJson(Map<String, dynamic> json ) => _$PostRequestModelFromJson(json);
}
