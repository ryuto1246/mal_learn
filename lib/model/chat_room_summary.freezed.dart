// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_room_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatRoomSummary {
  String? get name => throw _privateConstructorUsedError;
  DateTime? get lastMessageAt => throw _privateConstructorUsedError;
  String? get iconPath => throw _privateConstructorUsedError;
  ChatType get chatType => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;
  DocumentReference<Object?> get reference =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatRoomSummaryCopyWith<ChatRoomSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomSummaryCopyWith<$Res> {
  factory $ChatRoomSummaryCopyWith(
          ChatRoomSummary value, $Res Function(ChatRoomSummary) then) =
      _$ChatRoomSummaryCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      DateTime? lastMessageAt,
      String? iconPath,
      ChatType chatType,
      List<String> members,
      DocumentReference<Object?> reference});
}

/// @nodoc
class _$ChatRoomSummaryCopyWithImpl<$Res>
    implements $ChatRoomSummaryCopyWith<$Res> {
  _$ChatRoomSummaryCopyWithImpl(this._value, this._then);

  final ChatRoomSummary _value;
  // ignore: unused_field
  final $Res Function(ChatRoomSummary) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? lastMessageAt = freezed,
    Object? iconPath = freezed,
    Object? chatType = freezed,
    Object? members = freezed,
    Object? reference = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageAt: lastMessageAt == freezed
          ? _value.lastMessageAt
          : lastMessageAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iconPath: iconPath == freezed
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
      chatType: chatType == freezed
          ? _value.chatType
          : chatType // ignore: cast_nullable_to_non_nullable
              as ChatType,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatRoomSummaryCopyWith<$Res>
    implements $ChatRoomSummaryCopyWith<$Res> {
  factory _$$_ChatRoomSummaryCopyWith(
          _$_ChatRoomSummary value, $Res Function(_$_ChatRoomSummary) then) =
      __$$_ChatRoomSummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      DateTime? lastMessageAt,
      String? iconPath,
      ChatType chatType,
      List<String> members,
      DocumentReference<Object?> reference});
}

/// @nodoc
class __$$_ChatRoomSummaryCopyWithImpl<$Res>
    extends _$ChatRoomSummaryCopyWithImpl<$Res>
    implements _$$_ChatRoomSummaryCopyWith<$Res> {
  __$$_ChatRoomSummaryCopyWithImpl(
      _$_ChatRoomSummary _value, $Res Function(_$_ChatRoomSummary) _then)
      : super(_value, (v) => _then(v as _$_ChatRoomSummary));

  @override
  _$_ChatRoomSummary get _value => super._value as _$_ChatRoomSummary;

  @override
  $Res call({
    Object? name = freezed,
    Object? lastMessageAt = freezed,
    Object? iconPath = freezed,
    Object? chatType = freezed,
    Object? members = freezed,
    Object? reference = freezed,
  }) {
    return _then(_$_ChatRoomSummary(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageAt: lastMessageAt == freezed
          ? _value.lastMessageAt
          : lastMessageAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iconPath: iconPath == freezed
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String?,
      chatType: chatType == freezed
          ? _value.chatType
          : chatType // ignore: cast_nullable_to_non_nullable
              as ChatType,
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$_ChatRoomSummary implements _ChatRoomSummary {
  const _$_ChatRoomSummary(
      {required this.name,
      required this.lastMessageAt,
      required this.iconPath,
      required this.chatType,
      required final List<String> members,
      required this.reference})
      : _members = members;

  @override
  final String? name;
  @override
  final DateTime? lastMessageAt;
  @override
  final String? iconPath;
  @override
  final ChatType chatType;
  final List<String> _members;
  @override
  List<String> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final DocumentReference<Object?> reference;

  @override
  String toString() {
    return 'ChatRoomSummary(name: $name, lastMessageAt: $lastMessageAt, iconPath: $iconPath, chatType: $chatType, members: $members, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatRoomSummary &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.lastMessageAt, lastMessageAt) &&
            const DeepCollectionEquality().equals(other.iconPath, iconPath) &&
            const DeepCollectionEquality().equals(other.chatType, chatType) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other.reference, reference));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(lastMessageAt),
      const DeepCollectionEquality().hash(iconPath),
      const DeepCollectionEquality().hash(chatType),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(reference));

  @JsonKey(ignore: true)
  @override
  _$$_ChatRoomSummaryCopyWith<_$_ChatRoomSummary> get copyWith =>
      __$$_ChatRoomSummaryCopyWithImpl<_$_ChatRoomSummary>(this, _$identity);
}

abstract class _ChatRoomSummary implements ChatRoomSummary {
  const factory _ChatRoomSummary(
          {required final String? name,
          required final DateTime? lastMessageAt,
          required final String? iconPath,
          required final ChatType chatType,
          required final List<String> members,
          required final DocumentReference<Object?> reference}) =
      _$_ChatRoomSummary;

  @override
  String? get name;
  @override
  DateTime? get lastMessageAt;
  @override
  String? get iconPath;
  @override
  ChatType get chatType;
  @override
  List<String> get members;
  @override
  DocumentReference<Object?> get reference;
  @override
  @JsonKey(ignore: true)
  _$$_ChatRoomSummaryCopyWith<_$_ChatRoomSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
