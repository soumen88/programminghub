// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShoppingProductsModel _$ShoppingProductsModelFromJson(
    Map<String, dynamic> json) {
  return _ShoppingProductsModel.fromJson(json);
}

/// @nodoc
mixin _$ShoppingProductsModel {
  @JsonKey(name: "id")
  int get productId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get productDescription => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  ProductRatingsModel get productRatingsModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingProductsModelCopyWith<ShoppingProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingProductsModelCopyWith<$Res> {
  factory $ShoppingProductsModelCopyWith(ShoppingProductsModel value,
          $Res Function(ShoppingProductsModel) then) =
      _$ShoppingProductsModelCopyWithImpl<$Res, ShoppingProductsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int productId,
      String title,
      num price,
      @JsonKey(name: "description") String productDescription,
      String category,
      @JsonKey(name: "image") String imageUrl,
      @JsonKey(name: "rating") ProductRatingsModel productRatingsModel});

  $ProductRatingsModelCopyWith<$Res> get productRatingsModel;
}

/// @nodoc
class _$ShoppingProductsModelCopyWithImpl<$Res,
        $Val extends ShoppingProductsModel>
    implements $ShoppingProductsModelCopyWith<$Res> {
  _$ShoppingProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? title = null,
    Object? price = null,
    Object? productDescription = null,
    Object? category = null,
    Object? imageUrl = null,
    Object? productRatingsModel = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ShoppingProductsModelImplCopyWith<$Res>
    implements $ShoppingProductsModelCopyWith<$Res> {
  factory _$$ShoppingProductsModelImplCopyWith(
          _$ShoppingProductsModelImpl value,
          $Res Function(_$ShoppingProductsModelImpl) then) =
      __$$ShoppingProductsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int productId,
      String title,
      num price,
      @JsonKey(name: "description") String productDescription,
      String category,
      @JsonKey(name: "image") String imageUrl,
      @JsonKey(name: "rating") ProductRatingsModel productRatingsModel});

  @override
  $ProductRatingsModelCopyWith<$Res> get productRatingsModel;
}

/// @nodoc
class __$$ShoppingProductsModelImplCopyWithImpl<$Res>
    extends _$ShoppingProductsModelCopyWithImpl<$Res,
        _$ShoppingProductsModelImpl>
    implements _$$ShoppingProductsModelImplCopyWith<$Res> {
  __$$ShoppingProductsModelImplCopyWithImpl(_$ShoppingProductsModelImpl _value,
      $Res Function(_$ShoppingProductsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? title = null,
    Object? price = null,
    Object? productDescription = null,
    Object? category = null,
    Object? imageUrl = null,
    Object? productRatingsModel = null,
  }) {
    return _then(_$ShoppingProductsModelImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
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
class _$ShoppingProductsModelImpl implements _ShoppingProductsModel {
  const _$ShoppingProductsModelImpl(
      {@JsonKey(name: "id") required this.productId,
      required this.title,
      required this.price,
      @JsonKey(name: "description") required this.productDescription,
      required this.category,
      @JsonKey(name: "image") required this.imageUrl,
      @JsonKey(name: "rating") required this.productRatingsModel});

  factory _$ShoppingProductsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoppingProductsModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int productId;
  @override
  final String title;
  @override
  final num price;
  @override
  @JsonKey(name: "description")
  final String productDescription;
  @override
  final String category;
  @override
  @JsonKey(name: "image")
  final String imageUrl;
  @override
  @JsonKey(name: "rating")
  final ProductRatingsModel productRatingsModel;

  @override
  String toString() {
    return 'ShoppingProductsModel(productId: $productId, title: $title, price: $price, productDescription: $productDescription, category: $category, imageUrl: $imageUrl, productRatingsModel: $productRatingsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingProductsModelImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.productRatingsModel, productRatingsModel) ||
                other.productRatingsModel == productRatingsModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, title, price,
      productDescription, category, imageUrl, productRatingsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingProductsModelImplCopyWith<_$ShoppingProductsModelImpl>
      get copyWith => __$$ShoppingProductsModelImplCopyWithImpl<
          _$ShoppingProductsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoppingProductsModelImplToJson(
      this,
    );
  }
}

abstract class _ShoppingProductsModel implements ShoppingProductsModel {
  const factory _ShoppingProductsModel(
      {@JsonKey(name: "id") required final int productId,
      required final String title,
      required final num price,
      @JsonKey(name: "description") required final String productDescription,
      required final String category,
      @JsonKey(name: "image") required final String imageUrl,
      @JsonKey(name: "rating")
      required final ProductRatingsModel
          productRatingsModel}) = _$ShoppingProductsModelImpl;

  factory _ShoppingProductsModel.fromJson(Map<String, dynamic> json) =
      _$ShoppingProductsModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get productId;
  @override
  String get title;
  @override
  num get price;
  @override
  @JsonKey(name: "description")
  String get productDescription;
  @override
  String get category;
  @override
  @JsonKey(name: "image")
  String get imageUrl;
  @override
  @JsonKey(name: "rating")
  ProductRatingsModel get productRatingsModel;
  @override
  @JsonKey(ignore: true)
  _$$ShoppingProductsModelImplCopyWith<_$ShoppingProductsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
