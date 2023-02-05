// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  String get senderId => throw _privateConstructorUsedError;
  String get receiverId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call({String senderId, String receiverId, String text});
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? receiverId = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageModelCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$_MessageModelCopyWith(
          _$_MessageModel value, $Res Function(_$_MessageModel) then) =
      __$$_MessageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String senderId, String receiverId, String text});
}

/// @nodoc
class __$$_MessageModelCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$_MessageModel>
    implements _$$_MessageModelCopyWith<$Res> {
  __$$_MessageModelCopyWithImpl(
      _$_MessageModel _value, $Res Function(_$_MessageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? receiverId = null,
    Object? text = null,
  }) {
    return _then(_$_MessageModel(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageModel extends _MessageModel {
  const _$_MessageModel(
      {required this.senderId, required this.receiverId, required this.text})
      : super._();

  factory _$_MessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessageModelFromJson(json);

  @override
  final String senderId;
  @override
  final String receiverId;
  @override
  final String text;

  @override
  String toString() {
    return 'MessageModel(senderId: $senderId, receiverId: $receiverId, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageModel &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, senderId, receiverId, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageModelCopyWith<_$_MessageModel> get copyWith =>
      __$$_MessageModelCopyWithImpl<_$_MessageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageModelToJson(
      this,
    );
  }
}

abstract class _MessageModel extends MessageModel {
  const factory _MessageModel(
      {required final String senderId,
      required final String receiverId,
      required final String text}) = _$_MessageModel;
  const _MessageModel._() : super._();

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$_MessageModel.fromJson;

  @override
  String get senderId;
  @override
  String get receiverId;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_MessageModelCopyWith<_$_MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
