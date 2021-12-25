// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MealStateTearOff {
  const _$MealStateTearOff();

  _Initial call(
      {MealModel? meal,
      bool isLoading = false,
      bool hasError = false,
      String errorMessage = '',
      bool isFavorite = false}) {
    return _Initial(
      meal: meal,
      isLoading: isLoading,
      hasError: hasError,
      errorMessage: errorMessage,
      isFavorite: isFavorite,
    );
  }
}

/// @nodoc
const $MealState = _$MealStateTearOff();

/// @nodoc
mixin _$MealState {
  MealModel? get meal => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealStateCopyWith<MealState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealStateCopyWith<$Res> {
  factory $MealStateCopyWith(MealState value, $Res Function(MealState) then) =
      _$MealStateCopyWithImpl<$Res>;
  $Res call(
      {MealModel? meal,
      bool isLoading,
      bool hasError,
      String errorMessage,
      bool isFavorite});
}

/// @nodoc
class _$MealStateCopyWithImpl<$Res> implements $MealStateCopyWith<$Res> {
  _$MealStateCopyWithImpl(this._value, this._then);

  final MealState _value;
  // ignore: unused_field
  final $Res Function(MealState) _then;

  @override
  $Res call({
    Object? meal = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? errorMessage = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      meal: meal == freezed
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as MealModel?,
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
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $MealStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {MealModel? meal,
      bool isLoading,
      bool hasError,
      String errorMessage,
      bool isFavorite});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MealStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? meal = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? errorMessage = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_Initial(
      meal: meal == freezed
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as MealModel?,
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
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.meal,
      this.isLoading = false,
      this.hasError = false,
      this.errorMessage = '',
      this.isFavorite = false});

  @override
  final MealModel? meal;
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
  final bool isFavorite;

  @override
  String toString() {
    return 'MealState(meal: $meal, isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.meal, meal) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meal),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(isFavorite));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements MealState {
  const factory _Initial(
      {MealModel? meal,
      bool isLoading,
      bool hasError,
      String errorMessage,
      bool isFavorite}) = _$_Initial;

  @override
  MealModel? get meal;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String get errorMessage;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
