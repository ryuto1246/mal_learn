// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatUiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Stream<List<ChatMessage>> chatMessage)
        messageFetchSuccess,
    required TResult Function(Exception error) messageFetchfailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Stream<List<ChatMessage>> chatMessage)?
        messageFetchSuccess,
    TResult Function(Exception error)? messageFetchfailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Stream<List<ChatMessage>> chatMessage)?
        messageFetchSuccess,
    TResult Function(Exception error)? messageFetchfailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchSuccess value) messageFetchSuccess,
    required TResult Function(_MessageFetchFailure value) messageFetchfailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchSuccess value)? messageFetchSuccess,
    TResult Function(_MessageFetchFailure value)? messageFetchfailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchSuccess value)? messageFetchSuccess,
    TResult Function(_MessageFetchFailure value)? messageFetchfailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUiStateCopyWith<$Res> {
  factory $ChatUiStateCopyWith(
          ChatUiState value, $Res Function(ChatUiState) then) =
      _$ChatUiStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatUiStateCopyWithImpl<$Res> implements $ChatUiStateCopyWith<$Res> {
  _$ChatUiStateCopyWithImpl(this._value, this._then);

  final ChatUiState _value;
  // ignore: unused_field
  final $Res Function(ChatUiState) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$ChatUiStateCopyWithImpl<$Res>
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
    return 'ChatUiState.init()';
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
    required TResult Function(Stream<List<ChatMessage>> chatMessage)
        messageFetchSuccess,
    required TResult Function(Exception error) messageFetchfailure,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Stream<List<ChatMessage>> chatMessage)?
        messageFetchSuccess,
    TResult Function(Exception error)? messageFetchfailure,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Stream<List<ChatMessage>> chatMessage)?
        messageFetchSuccess,
    TResult Function(Exception error)? messageFetchfailure,
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
    required TResult Function(_FetchSuccess value) messageFetchSuccess,
    required TResult Function(_MessageFetchFailure value) messageFetchfailure,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchSuccess value)? messageFetchSuccess,
    TResult Function(_MessageFetchFailure value)? messageFetchfailure,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchSuccess value)? messageFetchSuccess,
    TResult Function(_MessageFetchFailure value)? messageFetchfailure,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ChatUiState {
  factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$ChatUiStateCopyWithImpl<$Res>
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
    return 'ChatUiState.loading()';
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
    required TResult Function(Stream<List<ChatMessage>> chatMessage)
        messageFetchSuccess,
    required TResult Function(Exception error) messageFetchfailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Stream<List<ChatMessage>> chatMessage)?
        messageFetchSuccess,
    TResult Function(Exception error)? messageFetchfailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Stream<List<ChatMessage>> chatMessage)?
        messageFetchSuccess,
    TResult Function(Exception error)? messageFetchfailure,
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
    required TResult Function(_FetchSuccess value) messageFetchSuccess,
    required TResult Function(_MessageFetchFailure value) messageFetchfailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchSuccess value)? messageFetchSuccess,
    TResult Function(_MessageFetchFailure value)? messageFetchfailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchSuccess value)? messageFetchSuccess,
    TResult Function(_MessageFetchFailure value)? messageFetchfailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatUiState {
  factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FetchSuccessCopyWith<$Res> {
  factory _$$_FetchSuccessCopyWith(
          _$_FetchSuccess value, $Res Function(_$_FetchSuccess) then) =
      __$$_FetchSuccessCopyWithImpl<$Res>;
  $Res call({Stream<List<ChatMessage>> chatMessage});
}

/// @nodoc
class __$$_FetchSuccessCopyWithImpl<$Res>
    extends _$ChatUiStateCopyWithImpl<$Res>
    implements _$$_FetchSuccessCopyWith<$Res> {
  __$$_FetchSuccessCopyWithImpl(
      _$_FetchSuccess _value, $Res Function(_$_FetchSuccess) _then)
      : super(_value, (v) => _then(v as _$_FetchSuccess));

  @override
  _$_FetchSuccess get _value => super._value as _$_FetchSuccess;

  @override
  $Res call({
    Object? chatMessage = freezed,
  }) {
    return _then(_$_FetchSuccess(
      chatMessage == freezed
          ? _value.chatMessage
          : chatMessage // ignore: cast_nullable_to_non_nullable
              as Stream<List<ChatMessage>>,
    ));
  }
}

/// @nodoc

class _$_FetchSuccess implements _FetchSuccess {
  _$_FetchSuccess(this.chatMessage);

  @override
  final Stream<List<ChatMessage>> chatMessage;

  @override
  String toString() {
    return 'ChatUiState.messageFetchSuccess(chatMessage: $chatMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchSuccess &&
            const DeepCollectionEquality()
                .equals(other.chatMessage, chatMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(chatMessage));

  @JsonKey(ignore: true)
  @override
  _$$_FetchSuccessCopyWith<_$_FetchSuccess> get copyWith =>
      __$$_FetchSuccessCopyWithImpl<_$_FetchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Stream<List<ChatMessage>> chatMessage)
        messageFetchSuccess,
    required TResult Function(Exception error) messageFetchfailure,
  }) {
    return messageFetchSuccess(chatMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Stream<List<ChatMessage>> chatMessage)?
        messageFetchSuccess,
    TResult Function(Exception error)? messageFetchfailure,
  }) {
    return messageFetchSuccess?.call(chatMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Stream<List<ChatMessage>> chatMessage)?
        messageFetchSuccess,
    TResult Function(Exception error)? messageFetchfailure,
    required TResult orElse(),
  }) {
    if (messageFetchSuccess != null) {
      return messageFetchSuccess(chatMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchSuccess value) messageFetchSuccess,
    required TResult Function(_MessageFetchFailure value) messageFetchfailure,
  }) {
    return messageFetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchSuccess value)? messageFetchSuccess,
    TResult Function(_MessageFetchFailure value)? messageFetchfailure,
  }) {
    return messageFetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchSuccess value)? messageFetchSuccess,
    TResult Function(_MessageFetchFailure value)? messageFetchfailure,
    required TResult orElse(),
  }) {
    if (messageFetchSuccess != null) {
      return messageFetchSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchSuccess implements ChatUiState {
  factory _FetchSuccess(final Stream<List<ChatMessage>> chatMessage) =
      _$_FetchSuccess;

  Stream<List<ChatMessage>> get chatMessage;
  @JsonKey(ignore: true)
  _$$_FetchSuccessCopyWith<_$_FetchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MessageFetchFailureCopyWith<$Res> {
  factory _$$_MessageFetchFailureCopyWith(_$_MessageFetchFailure value,
          $Res Function(_$_MessageFetchFailure) then) =
      __$$_MessageFetchFailureCopyWithImpl<$Res>;
  $Res call({Exception error});
}

/// @nodoc
class __$$_MessageFetchFailureCopyWithImpl<$Res>
    extends _$ChatUiStateCopyWithImpl<$Res>
    implements _$$_MessageFetchFailureCopyWith<$Res> {
  __$$_MessageFetchFailureCopyWithImpl(_$_MessageFetchFailure _value,
      $Res Function(_$_MessageFetchFailure) _then)
      : super(_value, (v) => _then(v as _$_MessageFetchFailure));

  @override
  _$_MessageFetchFailure get _value => super._value as _$_MessageFetchFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_MessageFetchFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_MessageFetchFailure implements _MessageFetchFailure {
  _$_MessageFetchFailure(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'ChatUiState.messageFetchfailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageFetchFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_MessageFetchFailureCopyWith<_$_MessageFetchFailure> get copyWith =>
      __$$_MessageFetchFailureCopyWithImpl<_$_MessageFetchFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Stream<List<ChatMessage>> chatMessage)
        messageFetchSuccess,
    required TResult Function(Exception error) messageFetchfailure,
  }) {
    return messageFetchfailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Stream<List<ChatMessage>> chatMessage)?
        messageFetchSuccess,
    TResult Function(Exception error)? messageFetchfailure,
  }) {
    return messageFetchfailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Stream<List<ChatMessage>> chatMessage)?
        messageFetchSuccess,
    TResult Function(Exception error)? messageFetchfailure,
    required TResult orElse(),
  }) {
    if (messageFetchfailure != null) {
      return messageFetchfailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchSuccess value) messageFetchSuccess,
    required TResult Function(_MessageFetchFailure value) messageFetchfailure,
  }) {
    return messageFetchfailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchSuccess value)? messageFetchSuccess,
    TResult Function(_MessageFetchFailure value)? messageFetchfailure,
  }) {
    return messageFetchfailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchSuccess value)? messageFetchSuccess,
    TResult Function(_MessageFetchFailure value)? messageFetchfailure,
    required TResult orElse(),
  }) {
    if (messageFetchfailure != null) {
      return messageFetchfailure(this);
    }
    return orElse();
  }
}

abstract class _MessageFetchFailure implements ChatUiState {
  factory _MessageFetchFailure(final Exception error) = _$_MessageFetchFailure;

  Exception get error;
  @JsonKey(ignore: true)
  _$$_MessageFetchFailureCopyWith<_$_MessageFetchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
