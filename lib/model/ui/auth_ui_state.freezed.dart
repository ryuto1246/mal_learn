// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthUiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(User user) signUpSuccess,
    required TResult Function(AppError error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User user)? signUpSuccess,
    TResult Function(AppError error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User user)? signUpSuccess,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignInSuccess value) signUpSuccess,
    required TResult Function(_AuthFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signUpSuccess,
    TResult Function(_AuthFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signUpSuccess,
    TResult Function(_AuthFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUiStateCopyWith<$Res> {
  factory $AuthUiStateCopyWith(
          AuthUiState value, $Res Function(AuthUiState) then) =
      _$AuthUiStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthUiStateCopyWithImpl<$Res> implements $AuthUiStateCopyWith<$Res> {
  _$AuthUiStateCopyWithImpl(this._value, this._then);

  final AuthUiState _value;
  // ignore: unused_field
  final $Res Function(AuthUiState) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$AuthUiStateCopyWithImpl<$Res>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, (v) => _then(v as _$_Init));

  @override
  _$_Init get _value => super._value as _$_Init;
}

/// @nodoc

class _$_Init implements _Init {
  _$_Init();

  @override
  String toString() {
    return 'AuthUiState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(User user) signUpSuccess,
    required TResult Function(AppError error) failure,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User user)? signUpSuccess,
    TResult Function(AppError error)? failure,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User user)? signUpSuccess,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignInSuccess value) signUpSuccess,
    required TResult Function(_AuthFailure value) failure,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signUpSuccess,
    TResult Function(_AuthFailure value)? failure,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signUpSuccess,
    TResult Function(_AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements AuthUiState {
  factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$AuthUiStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  _$_Loading();

  @override
  String toString() {
    return 'AuthUiState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(User user) signUpSuccess,
    required TResult Function(AppError error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User user)? signUpSuccess,
    TResult Function(AppError error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User user)? signUpSuccess,
    TResult Function(AppError error)? failure,
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
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignInSuccess value) signUpSuccess,
    required TResult Function(_AuthFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signUpSuccess,
    TResult Function(_AuthFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signUpSuccess,
    TResult Function(_AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthUiState {
  factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SignInSuccessCopyWith<$Res> {
  factory _$$_SignInSuccessCopyWith(
          _$_SignInSuccess value, $Res Function(_$_SignInSuccess) then) =
      __$$_SignInSuccessCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class __$$_SignInSuccessCopyWithImpl<$Res>
    extends _$AuthUiStateCopyWithImpl<$Res>
    implements _$$_SignInSuccessCopyWith<$Res> {
  __$$_SignInSuccessCopyWithImpl(
      _$_SignInSuccess _value, $Res Function(_$_SignInSuccess) _then)
      : super(_value, (v) => _then(v as _$_SignInSuccess));

  @override
  _$_SignInSuccess get _value => super._value as _$_SignInSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_SignInSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_SignInSuccess implements _SignInSuccess {
  _$_SignInSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthUiState.signUpSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_SignInSuccessCopyWith<_$_SignInSuccess> get copyWith =>
      __$$_SignInSuccessCopyWithImpl<_$_SignInSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(User user) signUpSuccess,
    required TResult Function(AppError error) failure,
  }) {
    return signUpSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User user)? signUpSuccess,
    TResult Function(AppError error)? failure,
  }) {
    return signUpSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User user)? signUpSuccess,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignInSuccess value) signUpSuccess,
    required TResult Function(_AuthFailure value) failure,
  }) {
    return signUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signUpSuccess,
    TResult Function(_AuthFailure value)? failure,
  }) {
    return signUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signUpSuccess,
    TResult Function(_AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(this);
    }
    return orElse();
  }
}

abstract class _SignInSuccess implements AuthUiState {
  factory _SignInSuccess(final User user) = _$_SignInSuccess;

  User get user;
  @JsonKey(ignore: true)
  _$$_SignInSuccessCopyWith<_$_SignInSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthFailureCopyWith<$Res> {
  factory _$$_AuthFailureCopyWith(
          _$_AuthFailure value, $Res Function(_$_AuthFailure) then) =
      __$$_AuthFailureCopyWithImpl<$Res>;
  $Res call({AppError error});
}

/// @nodoc
class __$$_AuthFailureCopyWithImpl<$Res> extends _$AuthUiStateCopyWithImpl<$Res>
    implements _$$_AuthFailureCopyWith<$Res> {
  __$$_AuthFailureCopyWithImpl(
      _$_AuthFailure _value, $Res Function(_$_AuthFailure) _then)
      : super(_value, (v) => _then(v as _$_AuthFailure));

  @override
  _$_AuthFailure get _value => super._value as _$_AuthFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_AuthFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$_AuthFailure implements _AuthFailure {
  _$_AuthFailure(this.error);

  @override
  final AppError error;

  @override
  String toString() {
    return 'AuthUiState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_AuthFailureCopyWith<_$_AuthFailure> get copyWith =>
      __$$_AuthFailureCopyWithImpl<_$_AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(User user) signUpSuccess,
    required TResult Function(AppError error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User user)? signUpSuccess,
    TResult Function(AppError error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User user)? signUpSuccess,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignInSuccess value) signUpSuccess,
    required TResult Function(_AuthFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signUpSuccess,
    TResult Function(_AuthFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signUpSuccess,
    TResult Function(_AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _AuthFailure implements AuthUiState {
  factory _AuthFailure(final AppError error) = _$_AuthFailure;

  AppError get error;
  @JsonKey(ignore: true)
  _$$_AuthFailureCopyWith<_$_AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
