// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteStateTearOff {
  const _$FavoriteStateTearOff();

  _Initial call(
      {List<Meal> listFavoriteMeal = const [],
      bool isLoading = false,
      bool hasError = false,
      String errorMessage = ''}) {
    return _Initial(
      listFavoriteMeal: listFavoriteMeal,
      isLoading: isLoading,
      hasError: hasError,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $FavoriteState = _$FavoriteStateTearOff();

/// @nodoc
mixin _$FavoriteState {
  List<Meal> get listFavoriteMeal => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res>;
  $Res call(
      {List<Meal> listFavoriteMeal,
      bool isLoading,
      bool hasError,
      String errorMessage});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  final FavoriteState _value;
  // ignore: unused_field
  final $Res Function(FavoriteState) _then;

  @override
  $Res call({
    Object? listFavoriteMeal = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      listFavoriteMeal: listFavoriteMeal == freezed
          ? _value.listFavoriteMeal
          : listFavoriteMeal // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
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
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $FavoriteStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Meal> listFavoriteMeal,
      bool isLoading,
      bool hasError,
      String errorMessage});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? listFavoriteMeal = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_Initial(
      listFavoriteMeal: listFavoriteMeal == freezed
          ? _value.listFavoriteMeal
          : listFavoriteMeal // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
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
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.listFavoriteMeal = const [],
      this.isLoading = false,
      this.hasError = false,
      this.errorMessage = ''});

  @JsonKey()
  @override
  final List<Meal> listFavoriteMeal;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool hasError;
  @JsonKey()
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'FavoriteState(listFavoriteMeal: $listFavoriteMeal, isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.listFavoriteMeal, listFavoriteMeal) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listFavoriteMeal),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements FavoriteState {
  const factory _Initial(
      {List<Meal> listFavoriteMeal,
      bool isLoading,
      bool hasError,
      String errorMessage}) = _$_Initial;

  @override
  List<Meal> get listFavoriteMeal;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
