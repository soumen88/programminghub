// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_ratings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductRatingsModel _$ProductRatingsModelFromJson(Map<String, dynamic> json) {
  return _ProductRatingsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductRatingsModel {
  num get rate => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductRatingsModelCopyWith<ProductRatingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRatingsModelCopyWith<$Res> {
  factory $ProductRatingsModelCopyWith(
          ProductRatingsModel value, $Res Function(ProductRatingsModel) then) =
      _$ProductRatingsModelCopyWithImpl<$Res, ProductRatingsModel>;
  @useResult
  $Res call({num rate, int count});
}

/// @nodoc
class _$ProductRatingsModelCopyWithImpl<$Res, $Val extends ProductRatingsModel>
    implements $ProductRatingsModelCopyWith<$Res> {
  _$ProductRatingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductRatingsModelImplCopyWith<$Res>
    implements $ProductRatingsModelCopyWith<$Res> {
  factory _$$ProductRatingsModelImplCopyWith(_$ProductRatingsModelImpl value,
          $Res Function(_$ProductRatingsModelImpl) then) =
      __$$ProductRatingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num rate, int count});
}

/// @nodoc
class __$$ProductRatingsModelImplCopyWithImpl<$Res>
    extends _$ProductRatingsModelCopyWithImpl<$Res, _$ProductRatingsModelImpl>
    implements _$$ProductRatingsModelImplCopyWith<$Res> {
  __$$ProductRatingsModelImplCopyWithImpl(_$ProductRatingsModelImpl _value,
      $Res Function(_$ProductRatingsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? count = null,
  }) {
    return _then(_$ProductRatingsModelImpl(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProductRatingsModelImpl implements _ProductRatingsModel {
  const _$ProductRatingsModelImpl({required this.rate, required this.count});

  factory _$ProductRatingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductRatingsModelImplFromJson(json);

  @override
  final num rate;
  @override
  final int count;

  @override
  String toString() {
    return 'ProductRatingsModel(rate: $rate, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRatingsModelImpl &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rate, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRatingsModelImplCopyWith<_$ProductRatingsModelImpl> get copyWith =>
      __$$ProductRatingsModelImplCopyWithImpl<_$ProductRatingsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductRatingsModelImplToJson(
      this,
    );
  }
}

abstract class _ProductRatingsModel implements ProductRatingsModel {
  const factory _ProductRatingsModel(
      {required final num rate,
      required final int count}) = _$ProductRatingsModelImpl;

  factory _ProductRatingsModel.fromJson(Map<String, dynamic> json) =
      _$ProductRatingsModelImpl.fromJson;

  @override
  num get rate;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$ProductRatingsModelImplCopyWith<_$ProductRatingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
