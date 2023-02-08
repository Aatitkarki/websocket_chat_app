// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_message_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserMessageListModel _$UserMessageListModelFromJson(Map<String, dynamic> json) {
  return _UserMessageListModel.fromJson(json);
}

/// @nodoc
mixin _$UserMessageListModel {
  String get userId => throw _privateConstructorUsedError;
  List<MessageModel> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserMessageListModelCopyWith<UserMessageListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMessageListModelCopyWith<$Res> {
  factory $UserMessageListModelCopyWith(UserMessageListModel value,
          $Res Function(UserMessageListModel) then) =
      _$UserMessageListModelCopyWithImpl<$Res, UserMessageListModel>;
  @useResult
  $Res call({String userId, List<MessageModel> messages});
}

/// @nodoc
class _$UserMessageListModelCopyWithImpl<$Res,
        $Val extends UserMessageListModel>
    implements $UserMessageListModelCopyWith<$Res> {
  _$UserMessageListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserMessageListModelCopyWith<$Res>
    implements $UserMessageListModelCopyWith<$Res> {
  factory _$$_UserMessageListModelCopyWith(_$_UserMessageListModel value,
          $Res Function(_$_UserMessageListModel) then) =
      __$$_UserMessageListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, List<MessageModel> messages});
}

/// @nodoc
class __$$_UserMessageListModelCopyWithImpl<$Res>
    extends _$UserMessageListModelCopyWithImpl<$Res, _$_UserMessageListModel>
    implements _$$_UserMessageListModelCopyWith<$Res> {
  __$$_UserMessageListModelCopyWithImpl(_$_UserMessageListModel _value,
      $Res Function(_$_UserMessageListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? messages = null,
  }) {
    return _then(_$_UserMessageListModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserMessageListModel extends _UserMessageListModel {
  const _$_UserMessageListModel(
      {required this.userId, final List<MessageModel> messages = const []})
      : _messages = messages,
        super._();

  factory _$_UserMessageListModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserMessageListModelFromJson(json);

  @override
  final String userId;
  final List<MessageModel> _messages;
  @override
  @JsonKey()
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'UserMessageListModel(userId: $userId, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserMessageListModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserMessageListModelCopyWith<_$_UserMessageListModel> get copyWith =>
      __$$_UserMessageListModelCopyWithImpl<_$_UserMessageListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserMessageListModelToJson(
      this,
    );
  }
}

abstract class _UserMessageListModel extends UserMessageListModel {
  const factory _UserMessageListModel(
      {required final String userId,
      final List<MessageModel> messages}) = _$_UserMessageListModel;
  const _UserMessageListModel._() : super._();

  factory _UserMessageListModel.fromJson(Map<String, dynamic> json) =
      _$_UserMessageListModel.fromJson;

  @override
  String get userId;
  @override
  List<MessageModel> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_UserMessageListModelCopyWith<_$_UserMessageListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
