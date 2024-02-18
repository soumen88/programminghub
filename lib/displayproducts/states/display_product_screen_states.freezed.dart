// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'display_product_screen_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DisplayProductScreenStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? errorMessage) error,
    required TResult Function(List<ShoppingProductModel> productList)
        displayProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(List<ShoppingProductModel> productList)? displayProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? errorMessage)? error,
    TResult Function(List<ShoppingProductModel> productList)? displayProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayProductLoading value) loading,
    required TResult Function(_DisplayError value) error,
    required TResult Function(_DisplayProductList value) displayProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayProductLoading value)? loading,
    TResult? Function(_DisplayError value)? error,
    TResult? Function(_DisplayProductList value)? displayProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayProductLoading value)? loading,
    TResult Function(_DisplayError value)? error,
    TResult Function(_DisplayProductList value)? displayProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayProductScreenStatesCopyWith<$Res> {
  factory $DisplayProductScreenStatesCopyWith(DisplayProductScreenStates value,
          $Res Function(DisplayProductScreenStates) then) =
      _$DisplayProductScreenStatesCopyWithImpl<$Res,
          DisplayProductScreenStates>;
}

/// @nodoc
class _$DisplayProductScreenStatesCopyWithImpl<$Res,
        $Val extends DisplayProductScreenStates>
    implements $DisplayProductScreenStatesCopyWith<$Res> {
  _$DisplayProductScreenStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DisplayProductLoadingImplCopyWith<$Res> {
  factory _$$DisplayProductLoadingImplCopyWith(
          _$DisplayProductLoadingImpl value,
          $Res Function(_$DisplayProductLoadingImpl) then) =
      __$$DisplayProductLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisplayProductLoadingImplCopyWithImpl<$Res>
    extends _$DisplayProductScreenStatesCopyWithImpl<$Res,
        _$DisplayProductLoadingImpl>
    implements _$$DisplayProductLoadingImplCopyWith<$Res> {
  __$$DisplayProductLoadingImplCopyWithImpl(_$DisplayProductLoadingImpl _value,
      $Res Function(_$DisplayProductLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisplayProductLoadingImpl implements _DisplayProductLoading {
  const _$DisplayProductLoadingImpl();

  @override
  String toString() {
    return 'DisplayProductScreenStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayProductLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? errorMessage) error,
    required TResult Function(List<ShoppingProductModel> productList)
        displayProducts,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(List<ShoppingProductModel> productList)? displayProducts,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? errorMessage)? error,
    TResult Function(List<ShoppingProductModel> productList)? displayProducts,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayProductLoading value) loading,
    required TResult Function(_DisplayError value) error,
    required TResult Function(_DisplayProductList value) displayProducts,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayProductLoading value)? loading,
    TResult? Function(_DisplayError value)? error,
    TResult? Function(_DisplayProductList value)? displayProducts,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayProductLoading value)? loading,
    TResult Function(_DisplayError value)? error,
    TResult Function(_DisplayProductList value)? displayProducts,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DisplayProductLoading implements DisplayProductScreenStates {
  const factory _DisplayProductLoading() = _$DisplayProductLoadingImpl;
}

/// @nodoc
abstract class _$$DisplayErrorImplCopyWith<$Res> {
  factory _$$DisplayErrorImplCopyWith(
          _$DisplayErrorImpl value, $Res Function(_$DisplayErrorImpl) then) =
      __$$DisplayErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$DisplayErrorImplCopyWithImpl<$Res>
    extends _$DisplayProductScreenStatesCopyWithImpl<$Res, _$DisplayErrorImpl>
    implements _$$DisplayErrorImplCopyWith<$Res> {
  __$$DisplayErrorImplCopyWithImpl(
      _$DisplayErrorImpl _value, $Res Function(_$DisplayErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$DisplayErrorImpl(
      freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DisplayErrorImpl implements _DisplayError {
  const _$DisplayErrorImpl(this.errorMessage);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DisplayProductScreenStates.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayErrorImplCopyWith<_$DisplayErrorImpl> get copyWith =>
      __$$DisplayErrorImplCopyWithImpl<_$DisplayErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? errorMessage) error,
    required TResult Function(List<ShoppingProductModel> productList)
        displayProducts,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(List<ShoppingProductModel> productList)? displayProducts,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? errorMessage)? error,
    TResult Function(List<ShoppingProductModel> productList)? displayProducts,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayProductLoading value) loading,
    required TResult Function(_DisplayError value) error,
    required TResult Function(_DisplayProductList value) displayProducts,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayProductLoading value)? loading,
    TResult? Function(_DisplayError value)? error,
    TResult? Function(_DisplayProductList value)? displayProducts,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayProductLoading value)? loading,
    TResult Function(_DisplayError value)? error,
    TResult Function(_DisplayProductList value)? displayProducts,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DisplayError implements DisplayProductScreenStates {
  const factory _DisplayError(final String? errorMessage) = _$DisplayErrorImpl;

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$DisplayErrorImplCopyWith<_$DisplayErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisplayProductListImplCopyWith<$Res> {
  factory _$$DisplayProductListImplCopyWith(_$DisplayProductListImpl value,
          $Res Function(_$DisplayProductListImpl) then) =
      __$$DisplayProductListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ShoppingProductModel> productList});
}

/// @nodoc
class __$$DisplayProductListImplCopyWithImpl<$Res>
    extends _$DisplayProductScreenStatesCopyWithImpl<$Res,
        _$DisplayProductListImpl>
    implements _$$DisplayProductListImplCopyWith<$Res> {
  __$$DisplayProductListImplCopyWithImpl(_$DisplayProductListImpl _value,
      $Res Function(_$DisplayProductListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = null,
  }) {
    return _then(_$DisplayProductListImpl(
      null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ShoppingProductModel>,
    ));
  }
}

/// @nodoc

class _$DisplayProductListImpl implements _DisplayProductList {
  const _$DisplayProductListImpl(final List<ShoppingProductModel> productList)
      : _productList = productList;

  final List<ShoppingProductModel> _productList;
  @override
  List<ShoppingProductModel> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  String toString() {
    return 'DisplayProductScreenStates.displayProducts(productList: $productList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayProductListImpl &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayProductListImplCopyWith<_$DisplayProductListImpl> get copyWith =>
      __$$DisplayProductListImplCopyWithImpl<_$DisplayProductListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? errorMessage) error,
    required TResult Function(List<ShoppingProductModel> productList)
        displayProducts,
  }) {
    return displayProducts(productList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? errorMessage)? error,
    TResult? Function(List<ShoppingProductModel> productList)? displayProducts,
  }) {
    return displayProducts?.call(productList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? errorMessage)? error,
    TResult Function(List<ShoppingProductModel> productList)? displayProducts,
    required TResult orElse(),
  }) {
    if (displayProducts != null) {
      return displayProducts(productList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayProductLoading value) loading,
    required TResult Function(_DisplayError value) error,
    required TResult Function(_DisplayProductList value) displayProducts,
  }) {
    return displayProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayProductLoading value)? loading,
    TResult? Function(_DisplayError value)? error,
    TResult? Function(_DisplayProductList value)? displayProducts,
  }) {
    return displayProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayProductLoading value)? loading,
    TResult Function(_DisplayError value)? error,
    TResult Function(_DisplayProductList value)? displayProducts,
    required TResult orElse(),
  }) {
    if (displayProducts != null) {
      return displayProducts(this);
    }
    return orElse();
  }
}

abstract class _DisplayProductList implements DisplayProductScreenStates {
  const factory _DisplayProductList(
      final List<ShoppingProductModel> productList) = _$DisplayProductListImpl;

  List<ShoppingProductModel> get productList;
  @JsonKey(ignore: true)
  _$$DisplayProductListImplCopyWith<_$DisplayProductListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
