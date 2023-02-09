// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rtc_candidate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RtcCandidateModel _$RtcCandidateModelFromJson(Map<String, dynamic> json) {
  return _RtcCandidateModel.fromJson(json);
}

/// @nodoc
mixin _$RtcCandidateModel {
  String get receiverId => throw _privateConstructorUsedError;
  String get callerId => throw _privateConstructorUsedError;
  String? get candidate => throw _privateConstructorUsedError;
  int? get sdpMLineIndex => throw _privateConstructorUsedError;
  String? get sdpMid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RtcCandidateModelCopyWith<RtcCandidateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RtcCandidateModelCopyWith<$Res> {
  factory $RtcCandidateModelCopyWith(
          RtcCandidateModel value, $Res Function(RtcCandidateModel) then) =
      _$RtcCandidateModelCopyWithImpl<$Res, RtcCandidateModel>;
  @useResult
  $Res call(
      {String receiverId,
      String callerId,
      String? candidate,
      int? sdpMLineIndex,
      String? sdpMid});
}

/// @nodoc
class _$RtcCandidateModelCopyWithImpl<$Res, $Val extends RtcCandidateModel>
    implements $RtcCandidateModelCopyWith<$Res> {
  _$RtcCandidateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverId = null,
    Object? callerId = null,
    Object? candidate = freezed,
    Object? sdpMLineIndex = freezed,
    Object? sdpMid = freezed,
  }) {
    return _then(_value.copyWith(
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      callerId: null == callerId
          ? _value.callerId
          : callerId // ignore: cast_nullable_to_non_nullable
              as String,
      candidate: freezed == candidate
          ? _value.candidate
          : candidate // ignore: cast_nullable_to_non_nullable
              as String?,
      sdpMLineIndex: freezed == sdpMLineIndex
          ? _value.sdpMLineIndex
          : sdpMLineIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      sdpMid: freezed == sdpMid
          ? _value.sdpMid
          : sdpMid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RtcCandidateModelCopyWith<$Res>
    implements $RtcCandidateModelCopyWith<$Res> {
  factory _$$_RtcCandidateModelCopyWith(_$_RtcCandidateModel value,
          $Res Function(_$_RtcCandidateModel) then) =
      __$$_RtcCandidateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String receiverId,
      String callerId,
      String? candidate,
      int? sdpMLineIndex,
      String? sdpMid});
}

/// @nodoc
class __$$_RtcCandidateModelCopyWithImpl<$Res>
    extends _$RtcCandidateModelCopyWithImpl<$Res, _$_RtcCandidateModel>
    implements _$$_RtcCandidateModelCopyWith<$Res> {
  __$$_RtcCandidateModelCopyWithImpl(
      _$_RtcCandidateModel _value, $Res Function(_$_RtcCandidateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverId = null,
    Object? callerId = null,
    Object? candidate = freezed,
    Object? sdpMLineIndex = freezed,
    Object? sdpMid = freezed,
  }) {
    return _then(_$_RtcCandidateModel(
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      callerId: null == callerId
          ? _value.callerId
          : callerId // ignore: cast_nullable_to_non_nullable
              as String,
      candidate: freezed == candidate
          ? _value.candidate
          : candidate // ignore: cast_nullable_to_non_nullable
              as String?,
      sdpMLineIndex: freezed == sdpMLineIndex
          ? _value.sdpMLineIndex
          : sdpMLineIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      sdpMid: freezed == sdpMid
          ? _value.sdpMid
          : sdpMid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RtcCandidateModel extends _RtcCandidateModel {
  const _$_RtcCandidateModel(
      {required this.receiverId,
      required this.callerId,
      this.candidate,
      this.sdpMLineIndex,
      this.sdpMid})
      : super._();

  factory _$_RtcCandidateModel.fromJson(Map<String, dynamic> json) =>
      _$$_RtcCandidateModelFromJson(json);

  @override
  final String receiverId;
  @override
  final String callerId;
  @override
  final String? candidate;
  @override
  final int? sdpMLineIndex;
  @override
  final String? sdpMid;

  @override
  String toString() {
    return 'RtcCandidateModel(receiverId: $receiverId, callerId: $callerId, candidate: $candidate, sdpMLineIndex: $sdpMLineIndex, sdpMid: $sdpMid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RtcCandidateModel &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.callerId, callerId) ||
                other.callerId == callerId) &&
            (identical(other.candidate, candidate) ||
                other.candidate == candidate) &&
            (identical(other.sdpMLineIndex, sdpMLineIndex) ||
                other.sdpMLineIndex == sdpMLineIndex) &&
            (identical(other.sdpMid, sdpMid) || other.sdpMid == sdpMid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, receiverId, callerId, candidate, sdpMLineIndex, sdpMid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RtcCandidateModelCopyWith<_$_RtcCandidateModel> get copyWith =>
      __$$_RtcCandidateModelCopyWithImpl<_$_RtcCandidateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RtcCandidateModelToJson(
      this,
    );
  }
}

abstract class _RtcCandidateModel extends RtcCandidateModel {
  const factory _RtcCandidateModel(
      {required final String receiverId,
      required final String callerId,
      final String? candidate,
      final int? sdpMLineIndex,
      final String? sdpMid}) = _$_RtcCandidateModel;
  const _RtcCandidateModel._() : super._();

  factory _RtcCandidateModel.fromJson(Map<String, dynamic> json) =
      _$_RtcCandidateModel.fromJson;

  @override
  String get receiverId;
  @override
  String get callerId;
  @override
  String? get candidate;
  @override
  int? get sdpMLineIndex;
  @override
  String? get sdpMid;
  @override
  @JsonKey(ignore: true)
  _$$_RtcCandidateModelCopyWith<_$_RtcCandidateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
