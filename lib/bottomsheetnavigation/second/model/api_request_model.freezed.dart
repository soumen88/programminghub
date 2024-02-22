// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiRequestModel _$ApiRequestModelFromJson(Map<String, dynamic> json) {
  return _ApiRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ApiRequestModel {
  @JsonKey(name: "id")
  int get requestId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "body")
  String get requestBody => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiRequestModelCopyWith<ApiRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiRequestModelCopyWith<$Res> {
  factory $ApiRequestModelCopyWith(
          ApiRequestModel value, $Res Function(ApiRequestModel) then) =
      _$ApiRequestModelCopyWithImpl<$Res, ApiRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int requestId,
      String title,
      @JsonKey(name: "body") String requestBody,
      int userId});
}

/// @nodoc
class _$ApiRequestModelCopyWithImpl<$Res, $Val extends ApiRequestModel>
    implements $ApiRequestModelCopyWith<$Res> {
  _$ApiRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? title = null,
    Object? requestBody = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ApiRequestModelImplCopyWith<$Res>
    implements $ApiRequestModelCopyWith<$Res> {
  factory _$$ApiRequestModelImplCopyWith(_$ApiRequestModelImpl value,
          $Res Function(_$ApiRequestModelImpl) then) =
      __$$ApiRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int requestId,
      String title,
      @JsonKey(name: "body") String requestBody,
      int userId});
}

/// @nodoc
class __$$ApiRequestModelImplCopyWithImpl<$Res>
    extends _$ApiRequestModelCopyWithImpl<$Res, _$ApiRequestModelImpl>
    implements _$$ApiRequestModelImplCopyWith<$Res> {
  __$$ApiRequestModelImplCopyWithImpl(
      _$ApiRequestModelImpl _value, $Res Function(_$ApiRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? title = null,
    Object? requestBody = null,
    Object? userId = null,
  }) {
    return _then(_$ApiRequestModelImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
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
class _$ApiRequestModelImpl implements _ApiRequestModel {
  const _$ApiRequestModelImpl(
      {@JsonKey(name: "id") this.requestId = -1,
      required this.title,
      @JsonKey(name: "body") required this.requestBody,
      required this.userId});

  factory _$ApiRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int requestId;
  @override
  final String title;
  @override
  @JsonKey(name: "body")
  final String requestBody;
  @override
  final int userId;

  @override
  String toString() {
    return 'ApiRequestModel(requestId: $requestId, title: $title, requestBody: $requestBody, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiRequestModelImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.requestBody, requestBody) ||
                other.requestBody == requestBody) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, requestId, title, requestBody, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiRequestModelImplCopyWith<_$ApiRequestModelImpl> get copyWith =>
      __$$ApiRequestModelImplCopyWithImpl<_$ApiRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ApiRequestModel implements ApiRequestModel {
  const factory _ApiRequestModel(
      {@JsonKey(name: "id") final int requestId,
      required final String title,
      @JsonKey(name: "body") required final String requestBody,
      required final int userId}) = _$ApiRequestModelImpl;

  factory _ApiRequestModel.fromJson(Map<String, dynamic> json) =
      _$ApiRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get requestId;
  @override
  String get title;
  @override
  @JsonKey(name: "body")
  String get requestBody;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$ApiRequestModelImplCopyWith<_$ApiRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
