// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'searchmeal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchmealStateTearOff {
  const _$SearchmealStateTearOff();

  _Initial call(
      {bool isInitial = true,
      bool isLoading = false,
      bool hasError = false,
      String errorMessage = '',
      List<MealModel> listMeal = const []}) {
    return _Initial(
      isInitial: isInitial,
      isLoading: isLoading,
      hasError: hasError,
      errorMessage: errorMessage,
      listMeal: listMeal,
    );
  }
}

/// @nodoc
const $SearchmealState = _$SearchmealStateTearOff();

/// @nodoc
mixin _$SearchmealState {
  bool get isInitial => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<MealModel> get listMeal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchmealStateCopyWith<SearchmealState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchmealStateCopyWith<$Res> {
  factory $SearchmealStateCopyWith(
          SearchmealState value, $Res Function(SearchmealState) then) =
      _$SearchmealStateCopyWithImpl<$Res>;
  $Res call(
      {bool isInitial,
      bool isLoading,
      bool hasError,
      String errorMessage,
      List<MealModel> listMeal});
}

/// @nodoc
class _$SearchmealStateCopyWithImpl<$Res>
    implements $SearchmealStateCopyWith<$Res> {
  _$SearchmealStateCopyWithImpl(this._value, this._then);

  final SearchmealState _value;
  // ignore: unused_field
  final $Res Function(SearchmealState) _then;

  @override
  $Res call({
    Object? isInitial = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? errorMessage = freezed,
    Object? listMeal = freezed,
  }) {
    return _then(_value.copyWith(
      isInitial: isInitial == freezed
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      listMeal: listMeal == freezed
          ? _value.listMeal
          : listMeal // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $SearchmealStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isInitial,
      bool isLoading,
      bool hasError,
      String errorMessage,
      List<MealModel> listMeal});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SearchmealStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? isInitial = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? errorMessage = freezed,
    Object? listMeal = freezed,
  }) {
    return _then(_Initial(
      isInitial: isInitial == freezed
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      listMeal: listMeal == freezed
          ? _value.listMeal
          : listMeal // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.isInitial = true,
      this.isLoading = false,
      this.hasError = false,
      this.errorMessage = '',
      this.listMeal = const []});

  @JsonKey()
  @override
  final bool isInitial;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool hasError;
  @JsonKey()
  @override
  final String errorMessage;
  @JsonKey()
  @override
  final List<MealModel> listMeal;

  @override
  String toString() {
    return 'SearchmealState(isInitial: $isInitial, isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage, listMeal: $listMeal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.isInitial, isInitial) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.listMeal, listMeal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isInitial),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(listMeal));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements SearchmealState {
  const factory _Initial(
      {bool isInitial,
      bool isLoading,
      bool hasError,
      String errorMessage,
      List<MealModel> listMeal}) = _$_Initial;

  @override
  bool get isInitial;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String get errorMessage;
  @override
  List<MealModel> get listMeal;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
