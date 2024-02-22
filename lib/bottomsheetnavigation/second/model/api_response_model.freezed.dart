// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiResponseModel _$ApiResponseModelFromJson(Map<String, dynamic> json) {
  return _ApiResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseModel {
  @JsonKey(name: "id")
  int get postId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "body")
  String get requestBody => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseModelCopyWith<ApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseModelCopyWith<$Res> {
  factory $ApiResponseModelCopyWith(
          ApiResponseModel value, $Res Function(ApiResponseModel) then) =
      _$ApiResponseModelCopyWithImpl<$Res, ApiResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int postId,
      String title,
      @JsonKey(name: "body") String requestBody,
      int userId});
}

/// @nodoc
class _$ApiResponseModelCopyWithImpl<$Res, $Val extends ApiResponseModel>
    implements $ApiResponseModelCopyWith<$Res> {
  _$ApiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? title = null,
    Object? requestBody = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      requestBody: null == requestBody
          ? _value.requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiResponseModelImplCopyWith<$Res>
    implements $ApiResponseModelCopyWith<$Res> {
  factory _$$ApiResponseModelImplCopyWith(_$ApiResponseModelImpl value,
          $Res Function(_$ApiResponseModelImpl) then) =
      __$$ApiResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int postId,
      String title,
      @JsonKey(name: "body") String requestBody,
      int userId});
}

/// @nodoc
class __$$ApiResponseModelImplCopyWithImpl<$Res>
    extends _$ApiResponseModelCopyWithImpl<$Res, _$ApiResponseModelImpl>
    implements _$$ApiResponseModelImplCopyWith<$Res> {
  __$$ApiResponseModelImplCopyWithImpl(_$ApiResponseModelImpl _value,
      $Res Function(_$ApiResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? title = null,
    Object? requestBody = null,
    Object? userId = null,
  }) {
    return _then(_$ApiResponseModelImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      requestBody: null == requestBody
          ? _value.requestBody
          : requestBody // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$ApiResponseModelImpl implements _ApiResponseModel {
  const _$ApiResponseModelImpl(
      {@JsonKey(name: "id") required this.postId,
      required this.title,
      @JsonKey(name: "body") required this.requestBody,
      required this.userId});

  factory _$ApiResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int postId;
  @override
  final String title;
  @override
  @JsonKey(name: "body")
  final String requestBody;
  @override
  final int userId;

  @override
  String toString() {
    return 'ApiResponseModel(postId: $postId, title: $title, requestBody: $requestBody, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseModelImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.requestBody, requestBody) ||
                other.requestBody == requestBody) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, postId, title, requestBody, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseModelImplCopyWith<_$ApiResponseModelImpl> get copyWith =>
      __$$ApiResponseModelImplCopyWithImpl<_$ApiResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ApiResponseModel implements ApiResponseModel {
  const factory _ApiResponseModel(
      {@JsonKey(name: "id") required final int postId,
      required final String title,
      @JsonKey(name: "body") required final String requestBody,
      required final int userId}) = _$ApiResponseModelImpl;

  factory _ApiResponseModel.fromJson(Map<String, dynamic> json) =
      _$ApiResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get postId;
  @override
  String get title;
  @override
  @JsonKey(name: "body")
  String get requestBody;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$ApiResponseModelImplCopyWith<_$ApiResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
