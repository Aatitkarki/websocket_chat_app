// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caller_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CallerDescriptionModel _$CallerDescriptionModelFromJson(
    Map<String, dynamic> json) {
  return _CallerDescriptionModel.fromJson(json);
}

/// @nodoc
mixin _$CallerDescriptionModel {
  String get receiverId => throw _privateConstructorUsedError;
  String get callerId => throw _privateConstructorUsedError;
  String get callerName => throw _privateConstructorUsedError;
  Map<String, dynamic> get sdp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CallerDescriptionModelCopyWith<CallerDescriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallerDescriptionModelCopyWith<$Res> {
  factory $CallerDescriptionModelCopyWith(CallerDescriptionModel value,
          $Res Function(CallerDescriptionModel) then) =
      _$CallerDescriptionModelCopyWithImpl<$Res, CallerDescriptionModel>;
  @useResult
  $Res call(
      {String receiverId,
      String callerId,
      String callerName,
      Map<String, dynamic> sdp});
}

/// @nodoc
class _$CallerDescriptionModelCopyWithImpl<$Res,
        $Val extends CallerDescriptionModel>
    implements $CallerDescriptionModelCopyWith<$Res> {
  _$CallerDescriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverId = null,
    Object? callerId = null,
    Object? callerName = null,
    Object? sdp = null,
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
      callerName: null == callerName
          ? _value.callerName
          : callerName // ignore: cast_nullable_to_non_nullable
              as String,
      sdp: null == sdp
          ? _value.sdp
          : sdp // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CallerDescriptionModelCopyWith<$Res>
    implements $CallerDescriptionModelCopyWith<$Res> {
  factory _$$_CallerDescriptionModelCopyWith(_$_CallerDescriptionModel value,
          $Res Function(_$_CallerDescriptionModel) then) =
      __$$_CallerDescriptionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String receiverId,
      String callerId,
      String callerName,
      Map<String, dynamic> sdp});
}

/// @nodoc
class __$$_CallerDescriptionModelCopyWithImpl<$Res>
    extends _$CallerDescriptionModelCopyWithImpl<$Res,
        _$_CallerDescriptionModel>
    implements _$$_CallerDescriptionModelCopyWith<$Res> {
  __$$_CallerDescriptionModelCopyWithImpl(_$_CallerDescriptionModel _value,
      $Res Function(_$_CallerDescriptionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverId = null,
    Object? callerId = null,
    Object? callerName = null,
    Object? sdp = null,
  }) {
    return _then(_$_CallerDescriptionModel(
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      callerId: null == callerId
          ? _value.callerId
          : callerId // ignore: cast_nullable_to_non_nullable
              as String,
      callerName: null == callerName
          ? _value.callerName
          : callerName // ignore: cast_nullable_to_non_nullable
              as String,
      sdp: null == sdp
          ? _value._sdp
          : sdp // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CallerDescriptionModel extends _CallerDescriptionModel {
  const _$_CallerDescriptionModel(
      {required this.receiverId,
      required this.callerId,
      required this.callerName,
      required final Map<String, dynamic> sdp})
      : _sdp = sdp,
        super._();

  factory _$_CallerDescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$$_CallerDescriptionModelFromJson(json);

  @override
  final String receiverId;
  @override
  final String callerId;
  @override
  final String callerName;
  final Map<String, dynamic> _sdp;
  @override
  Map<String, dynamic> get sdp {
    if (_sdp is EqualUnmodifiableMapView) return _sdp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sdp);
  }

  @override
  String toString() {
    return 'CallerDescriptionModel(receiverId: $receiverId, callerId: $callerId, callerName: $callerName, sdp: $sdp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CallerDescriptionModel &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.callerId, callerId) ||
                other.callerId == callerId) &&
            (identical(other.callerName, callerName) ||
                other.callerName == callerName) &&
            const DeepCollectionEquality().equals(other._sdp, _sdp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, receiverId, callerId, callerName,
      const DeepCollectionEquality().hash(_sdp));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CallerDescriptionModelCopyWith<_$_CallerDescriptionModel> get copyWith =>
      __$$_CallerDescriptionModelCopyWithImpl<_$_CallerDescriptionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CallerDescriptionModelToJson(
      this,
    );
  }
}

abstract class _CallerDescriptionModel extends CallerDescriptionModel {
  const factory _CallerDescriptionModel(
      {required final String receiverId,
      required final String callerId,
      required final String callerName,
      required final Map<String, dynamic> sdp}) = _$_CallerDescriptionModel;
  const _CallerDescriptionModel._() : super._();

  factory _CallerDescriptionModel.fromJson(Map<String, dynamic> json) =
      _$_CallerDescriptionModel.fromJson;

  @override
  String get receiverId;
  @override
  String get callerId;
  @override
  String get callerName;
  @override
  Map<String, dynamic> get sdp;
  @override
  @JsonKey(ignore: true)
  _$$_CallerDescriptionModelCopyWith<_$_CallerDescriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
