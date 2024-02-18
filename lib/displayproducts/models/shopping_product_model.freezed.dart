// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShoppingProductModel _$ShoppingProductModelFromJson(Map<String, dynamic> json) {
  return _ShoppingProductModel.fromJson(json);
}

/// @nodoc
mixin _$ShoppingProductModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  ProductRatingsModel get productRatingsModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingProductModelCopyWith<ShoppingProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingProductModelCopyWith<$Res> {
  factory $ShoppingProductModelCopyWith(ShoppingProductModel value,
          $Res Function(ShoppingProductModel) then) =
      _$ShoppingProductModelCopyWithImpl<$Res, ShoppingProductModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      num price,
      String description,
      String category,
      String image,
      @JsonKey(name: "rating") ProductRatingsModel productRatingsModel});

  $ProductRatingsModelCopyWith<$Res> get productRatingsModel;
}

/// @nodoc
class _$ShoppingProductModelCopyWithImpl<$Res,
        $Val extends ShoppingProductModel>
    implements $ShoppingProductModelCopyWith<$Res> {
  _$ShoppingProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? category = null,
    Object? image = null,
    Object? productRatingsModel = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      productRatingsModel: null == productRatingsModel
          ? _value.productRatingsModel
          : productRatingsModel // ignore: cast_nullable_to_non_nullable
              as ProductRatingsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductRatingsModelCopyWith<$Res> get productRatingsModel {
    return $ProductRatingsModelCopyWith<$Res>(_value.productRatingsModel,
        (value) {
      return _then(_value.copyWith(productRatingsModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShoppingProductModelImplCopyWith<$Res>
    implements $ShoppingProductModelCopyWith<$Res> {
  factory _$$ShoppingProductModelImplCopyWith(_$ShoppingProductModelImpl value,
          $Res Function(_$ShoppingProductModelImpl) then) =
      __$$ShoppingProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      num price,
      String description,
      String category,
      String image,
      @JsonKey(name: "rating") ProductRatingsModel productRatingsModel});

  @override
  $ProductRatingsModelCopyWith<$Res> get productRatingsModel;
}

/// @nodoc
class __$$ShoppingProductModelImplCopyWithImpl<$Res>
    extends _$ShoppingProductModelCopyWithImpl<$Res, _$ShoppingProductModelImpl>
    implements _$$ShoppingProductModelImplCopyWith<$Res> {
  __$$ShoppingProductModelImplCopyWithImpl(_$ShoppingProductModelImpl _value,
      $Res Function(_$ShoppingProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? category = null,
    Object? image = null,
    Object? productRatingsModel = null,
  }) {
    return _then(_$ShoppingProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      productRatingsModel: null == productRatingsModel
          ? _value.productRatingsModel
          : productRatingsModel // ignore: cast_nullable_to_non_nullable
              as ProductRatingsModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ShoppingProductModelImpl implements _ShoppingProductModel {
  const _$ShoppingProductModelImpl(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      @JsonKey(name: "rating") required this.productRatingsModel});

  factory _$ShoppingProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoppingProductModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final num price;
  @override
  final String description;
  @override
  final String category;
  @override
  final String image;
  @override
  @JsonKey(name: "rating")
  final ProductRatingsModel productRatingsModel;

  @override
  String toString() {
    return 'ShoppingProductModel(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, productRatingsModel: $productRatingsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.productRatingsModel, productRatingsModel) ||
                other.productRatingsModel == productRatingsModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, price, description,
      category, image, productRatingsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingProductModelImplCopyWith<_$ShoppingProductModelImpl>
      get copyWith =>
          __$$ShoppingProductModelImplCopyWithImpl<_$ShoppingProductModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoppingProductModelImplToJson(
      this,
    );
  }
}

abstract class _ShoppingProductModel implements ShoppingProductModel {
  const factory _ShoppingProductModel(
          {required final int id,
          required final String title,
          required final num price,
          required final String description,
          required final String category,
          required final String image,
          @JsonKey(name: "rating")
          required final ProductRatingsModel productRatingsModel}) =
      _$ShoppingProductModelImpl;

  factory _ShoppingProductModel.fromJson(Map<String, dynamic> json) =
      _$ShoppingProductModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  num get price;
  @override
  String get description;
  @override
  String get category;
  @override
  String get image;
  @override
  @JsonKey(name: "rating")
  ProductRatingsModel get productRatingsModel;
  @override
  @JsonKey(ignore: true)
  _$$ShoppingProductModelImplCopyWith<_$ShoppingProductModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
