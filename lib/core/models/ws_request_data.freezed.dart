// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ws_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WsRequestDataModel _$WsRequestDataModelFromJson(Map<String, dynamic> json) {
  return _WsRequestDataModel.fromJson(json);
}

/// @nodoc
mixin _$WsRequestDataModel {
  String get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WsRequestDataModelCopyWith<WsRequestDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WsRequestDataModelCopyWith<$Res> {
  factory $WsRequestDataModelCopyWith(
          WsRequestDataModel value, $Res Function(WsRequestDataModel) then) =
      _$WsRequestDataModelCopyWithImpl<$Res, WsRequestDataModel>;
  @useResult
  $Res call({String type, Map<String, dynamic> data});
}

/// @nodoc
class _$WsRequestDataModelCopyWithImpl<$Res, $Val extends WsRequestDataModel>
    implements $WsRequestDataModelCopyWith<$Res> {
  _$WsRequestDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WsRequestDataModelCopyWith<$Res>
    implements $WsRequestDataModelCopyWith<$Res> {
  factory _$$_WsRequestDataModelCopyWith(_$_WsRequestDataModel value,
          $Res Function(_$_WsRequestDataModel) then) =
      __$$_WsRequestDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, Map<String, dynamic> data});
}

/// @nodoc
class __$$_WsRequestDataModelCopyWithImpl<$Res>
    extends _$WsRequestDataModelCopyWithImpl<$Res, _$_WsRequestDataModel>
    implements _$$_WsRequestDataModelCopyWith<$Res> {
  __$$_WsRequestDataModelCopyWithImpl(
      _$_WsRequestDataModel _value, $Res Function(_$_WsRequestDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
  }) {
    return _then(_$_WsRequestDataModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WsRequestDataModel extends _WsRequestDataModel {
  const _$_WsRequestDataModel(
      {required this.type, required final Map<String, dynamic> data})
      : _data = data,
        super._();

  factory _$_WsRequestDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_WsRequestDataModelFromJson(json);

  @override
  final String type;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'WsRequestDataModel(type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WsRequestDataModel &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WsRequestDataModelCopyWith<_$_WsRequestDataModel> get copyWith =>
      __$$_WsRequestDataModelCopyWithImpl<_$_WsRequestDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WsRequestDataModelToJson(
      this,
    );
  }
}

abstract class _WsRequestDataModel extends WsRequestDataModel {
  const factory _WsRequestDataModel(
      {required final String type,
      required final Map<String, dynamic> data}) = _$_WsRequestDataModel;
  const _WsRequestDataModel._() : super._();

  factory _WsRequestDataModel.fromJson(Map<String, dynamic> json) =
      _$_WsRequestDataModel.fromJson;

  @override
  String get type;
  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$_WsRequestDataModelCopyWith<_$_WsRequestDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
