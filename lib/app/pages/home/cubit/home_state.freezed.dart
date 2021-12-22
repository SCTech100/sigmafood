// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Initial call(
      {bool isLoading = false,
      bool isLoadingMeal = false,
      bool hasError = false,
      String errorMessage = '',
      List<MealCategory> listMealCategory = const [],
      List<Meal> listMeal = const []}) {
    return _Initial(
      isLoading: isLoading,
      isLoadingMeal: isLoadingMeal,
      hasError: hasError,
      errorMessage: errorMessage,
      listMealCategory: listMealCategory,
      listMeal: listMeal,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingMeal => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<MealCategory> get listMealCategory => throw _privateConstructorUsedError;
  List<Meal> get listMeal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isLoadingMeal,
      bool hasError,
      String errorMessage,
      List<MealCategory> listMealCategory,
      List<Meal> listMeal});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoadingMeal = freezed,
    Object? hasError = freezed,
    Object? errorMessage = freezed,
    Object? listMealCategory = freezed,
    Object? listMeal = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMeal: isLoadingMeal == freezed
          ? _value.isLoadingMeal
          : isLoadingMeal // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      listMealCategory: listMealCategory == freezed
          ? _value.listMealCategory
          : listMealCategory // ignore: cast_nullable_to_non_nullable
              as List<MealCategory>,
      listMeal: listMeal == freezed
          ? _value.listMeal
          : listMeal // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isLoadingMeal,
      bool hasError,
      String errorMessage,
      List<MealCategory> listMealCategory,
      List<Meal> listMeal});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoadingMeal = freezed,
    Object? hasError = freezed,
    Object? errorMessage = freezed,
    Object? listMealCategory = freezed,
    Object? listMeal = freezed,
  }) {
    return _then(_Initial(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMeal: isLoadingMeal == freezed
          ? _value.isLoadingMeal
          : isLoadingMeal // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      listMealCategory: listMealCategory == freezed
          ? _value.listMealCategory
          : listMealCategory // ignore: cast_nullable_to_non_nullable
              as List<MealCategory>,
      listMeal: listMeal == freezed
          ? _value.listMeal
          : listMeal // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.isLoading = false,
      this.isLoadingMeal = false,
      this.hasError = false,
      this.errorMessage = '',
      this.listMealCategory = const [],
      this.listMeal = const []});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isLoadingMeal;
  @JsonKey()
  @override
  final bool hasError;
  @JsonKey()
  @override
  final String errorMessage;
  @JsonKey()
  @override
  final List<MealCategory> listMealCategory;
  @JsonKey()
  @override
  final List<Meal> listMeal;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, isLoadingMeal: $isLoadingMeal, hasError: $hasError, errorMessage: $errorMessage, listMealCategory: $listMealCategory, listMeal: $listMeal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingMeal, isLoadingMeal) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.listMealCategory, listMealCategory) &&
            const DeepCollectionEquality().equals(other.listMeal, listMeal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isLoadingMeal),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(listMealCategory),
      const DeepCollectionEquality().hash(listMeal));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {bool isLoading,
      bool isLoadingMeal,
      bool hasError,
      String errorMessage,
      List<MealCategory> listMealCategory,
      List<Meal> listMeal}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get isLoadingMeal;
  @override
  bool get hasError;
  @override
  String get errorMessage;
  @override
  List<MealCategory> get listMealCategory;
  @override
  List<Meal> get listMeal;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
