// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostRequestModel _$PostRequestModelFromJson(Map<String, dynamic> json) {
  return _PostRequestModel.fromJson(json);
}

/// @nodoc
mixin _$PostRequestModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostRequestModelCopyWith<PostRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostRequestModelCopyWith<$Res> {
  factory $PostRequestModelCopyWith(
          PostRequestModel value, $Res Function(PostRequestModel) then) =
      _$PostRequestModelCopyWithImpl<$Res, PostRequestModel>;
  @useResult
  $Res call({int id, String title, String body, int userId});
}

/// @nodoc
class _$PostRequestModelCopyWithImpl<$Res, $Val extends PostRequestModel>
    implements $PostRequestModelCopyWith<$Res> {
  _$PostRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostRequestModelImplCopyWith<$Res>
    implements $PostRequestModelCopyWith<$Res> {
  factory _$$PostRequestModelImplCopyWith(_$PostRequestModelImpl value,
          $Res Function(_$PostRequestModelImpl) then) =
      __$$PostRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String body, int userId});
}

/// @nodoc
class __$$PostRequestModelImplCopyWithImpl<$Res>
    extends _$PostRequestModelCopyWithImpl<$Res, _$PostRequestModelImpl>
    implements _$$PostRequestModelImplCopyWith<$Res> {
  __$$PostRequestModelImplCopyWithImpl(_$PostRequestModelImpl _value,
      $Res Function(_$PostRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? userId = null,
  }) {
    return _then(_$PostRequestModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PostRequestModelImpl implements _PostRequestModel {
  const _$PostRequestModelImpl(
      {required this.id,
      required this.title,
      required this.body,
      required this.userId});

  factory _$PostRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostRequestModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String body;
  @override
  final int userId;

  @override
  String toString() {
    return 'PostRequestModel(id: $id, title: $title, body: $body, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostRequestModelImplCopyWith<_$PostRequestModelImpl> get copyWith =>
      __$$PostRequestModelImplCopyWithImpl<_$PostRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostRequestModelImplToJson(
      this,
    );
  }
}

abstract class _PostRequestModel implements PostRequestModel {
  const factory _PostRequestModel(
      {required final int id,
      required final String title,
      required final String body,
      required final int userId}) = _$PostRequestModelImpl;

  factory _PostRequestModel.fromJson(Map<String, dynamic> json) =
      _$PostRequestModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get body;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$PostRequestModelImplCopyWith<_$PostRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
