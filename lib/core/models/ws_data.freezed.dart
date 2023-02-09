// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ws_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WsDataModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) activeUsers,
    required TResult Function(MessageModel message) message,
    required TResult Function(CallerDescriptionModel callerDescriptionModel)
        incomingVideoCall,
    required TResult Function(CallerDescriptionModel receiverDescriptionModel)
        acceptedVideoCall,
    required TResult Function() rejectedVideoCall,
    required TResult Function() endedVideoCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? activeUsers,
    TResult? Function(MessageModel message)? message,
    TResult? Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult? Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult? Function()? rejectedVideoCall,
    TResult? Function()? endedVideoCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? activeUsers,
    TResult Function(MessageModel message)? message,
    TResult Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult Function()? rejectedVideoCall,
    TResult Function()? endedVideoCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActiveUsers value) activeUsers,
    required TResult Function(_Message value) message,
    required TResult Function(_IncomingVideoCall value) incomingVideoCall,
    required TResult Function(_AcceptedVideoCall value) acceptedVideoCall,
    required TResult Function(_RejectedVideoCall value) rejectedVideoCall,
    required TResult Function(_EndedVideoCall value) endedVideoCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveUsers value)? activeUsers,
    TResult? Function(_Message value)? message,
    TResult? Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult? Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult? Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult? Function(_EndedVideoCall value)? endedVideoCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveUsers value)? activeUsers,
    TResult Function(_Message value)? message,
    TResult Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult Function(_EndedVideoCall value)? endedVideoCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WsDataModelCopyWith<$Res> {
  factory $WsDataModelCopyWith(
          WsDataModel value, $Res Function(WsDataModel) then) =
      _$WsDataModelCopyWithImpl<$Res, WsDataModel>;
}

/// @nodoc
class _$WsDataModelCopyWithImpl<$Res, $Val extends WsDataModel>
    implements $WsDataModelCopyWith<$Res> {
  _$WsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ActiveUsersCopyWith<$Res> {
  factory _$$_ActiveUsersCopyWith(
          _$_ActiveUsers value, $Res Function(_$_ActiveUsers) then) =
      __$$_ActiveUsersCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ActiveUsersCopyWithImpl<$Res>
    extends _$WsDataModelCopyWithImpl<$Res, _$_ActiveUsers>
    implements _$$_ActiveUsersCopyWith<$Res> {
  __$$_ActiveUsersCopyWithImpl(
      _$_ActiveUsers _value, $Res Function(_$_ActiveUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_ActiveUsers(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_ActiveUsers implements _ActiveUsers {
  const _$_ActiveUsers({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'WsDataModel.activeUsers(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveUsers &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveUsersCopyWith<_$_ActiveUsers> get copyWith =>
      __$$_ActiveUsersCopyWithImpl<_$_ActiveUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) activeUsers,
    required TResult Function(MessageModel message) message,
    required TResult Function(CallerDescriptionModel callerDescriptionModel)
        incomingVideoCall,
    required TResult Function(CallerDescriptionModel receiverDescriptionModel)
        acceptedVideoCall,
    required TResult Function() rejectedVideoCall,
    required TResult Function() endedVideoCall,
  }) {
    return activeUsers(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? activeUsers,
    TResult? Function(MessageModel message)? message,
    TResult? Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult? Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult? Function()? rejectedVideoCall,
    TResult? Function()? endedVideoCall,
  }) {
    return activeUsers?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? activeUsers,
    TResult Function(MessageModel message)? message,
    TResult Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult Function()? rejectedVideoCall,
    TResult Function()? endedVideoCall,
    required TResult orElse(),
  }) {
    if (activeUsers != null) {
      return activeUsers(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActiveUsers value) activeUsers,
    required TResult Function(_Message value) message,
    required TResult Function(_IncomingVideoCall value) incomingVideoCall,
    required TResult Function(_AcceptedVideoCall value) acceptedVideoCall,
    required TResult Function(_RejectedVideoCall value) rejectedVideoCall,
    required TResult Function(_EndedVideoCall value) endedVideoCall,
  }) {
    return activeUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveUsers value)? activeUsers,
    TResult? Function(_Message value)? message,
    TResult? Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult? Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult? Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult? Function(_EndedVideoCall value)? endedVideoCall,
  }) {
    return activeUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveUsers value)? activeUsers,
    TResult Function(_Message value)? message,
    TResult Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult Function(_EndedVideoCall value)? endedVideoCall,
    required TResult orElse(),
  }) {
    if (activeUsers != null) {
      return activeUsers(this);
    }
    return orElse();
  }
}

abstract class _ActiveUsers implements WsDataModel {
  const factory _ActiveUsers({required final UserModel user}) = _$_ActiveUsers;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$_ActiveUsersCopyWith<_$_ActiveUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageModel message});

  $MessageModelCopyWith<$Res> get message;
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$WsDataModelCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Message(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageModelCopyWith<$Res> get message {
    return $MessageModelCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$_Message implements _Message {
  const _$_Message({required this.message});

  @override
  final MessageModel message;

  @override
  String toString() {
    return 'WsDataModel.message(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) activeUsers,
    required TResult Function(MessageModel message) message,
    required TResult Function(CallerDescriptionModel callerDescriptionModel)
        incomingVideoCall,
    required TResult Function(CallerDescriptionModel receiverDescriptionModel)
        acceptedVideoCall,
    required TResult Function() rejectedVideoCall,
    required TResult Function() endedVideoCall,
  }) {
    return message(this.message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? activeUsers,
    TResult? Function(MessageModel message)? message,
    TResult? Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult? Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult? Function()? rejectedVideoCall,
    TResult? Function()? endedVideoCall,
  }) {
    return message?.call(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? activeUsers,
    TResult Function(MessageModel message)? message,
    TResult Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult Function()? rejectedVideoCall,
    TResult Function()? endedVideoCall,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActiveUsers value) activeUsers,
    required TResult Function(_Message value) message,
    required TResult Function(_IncomingVideoCall value) incomingVideoCall,
    required TResult Function(_AcceptedVideoCall value) acceptedVideoCall,
    required TResult Function(_RejectedVideoCall value) rejectedVideoCall,
    required TResult Function(_EndedVideoCall value) endedVideoCall,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveUsers value)? activeUsers,
    TResult? Function(_Message value)? message,
    TResult? Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult? Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult? Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult? Function(_EndedVideoCall value)? endedVideoCall,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveUsers value)? activeUsers,
    TResult Function(_Message value)? message,
    TResult Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult Function(_EndedVideoCall value)? endedVideoCall,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class _Message implements WsDataModel {
  const factory _Message({required final MessageModel message}) = _$_Message;

  MessageModel get message;
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IncomingVideoCallCopyWith<$Res> {
  factory _$$_IncomingVideoCallCopyWith(_$_IncomingVideoCall value,
          $Res Function(_$_IncomingVideoCall) then) =
      __$$_IncomingVideoCallCopyWithImpl<$Res>;
  @useResult
  $Res call({CallerDescriptionModel callerDescriptionModel});

  $CallerDescriptionModelCopyWith<$Res> get callerDescriptionModel;
}

/// @nodoc
class __$$_IncomingVideoCallCopyWithImpl<$Res>
    extends _$WsDataModelCopyWithImpl<$Res, _$_IncomingVideoCall>
    implements _$$_IncomingVideoCallCopyWith<$Res> {
  __$$_IncomingVideoCallCopyWithImpl(
      _$_IncomingVideoCall _value, $Res Function(_$_IncomingVideoCall) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callerDescriptionModel = null,
  }) {
    return _then(_$_IncomingVideoCall(
      callerDescriptionModel: null == callerDescriptionModel
          ? _value.callerDescriptionModel
          : callerDescriptionModel // ignore: cast_nullable_to_non_nullable
              as CallerDescriptionModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CallerDescriptionModelCopyWith<$Res> get callerDescriptionModel {
    return $CallerDescriptionModelCopyWith<$Res>(_value.callerDescriptionModel,
        (value) {
      return _then(_value.copyWith(callerDescriptionModel: value));
    });
  }
}

/// @nodoc

class _$_IncomingVideoCall implements _IncomingVideoCall {
  const _$_IncomingVideoCall({required this.callerDescriptionModel});

  @override
  final CallerDescriptionModel callerDescriptionModel;

  @override
  String toString() {
    return 'WsDataModel.incomingVideoCall(callerDescriptionModel: $callerDescriptionModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncomingVideoCall &&
            (identical(other.callerDescriptionModel, callerDescriptionModel) ||
                other.callerDescriptionModel == callerDescriptionModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callerDescriptionModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncomingVideoCallCopyWith<_$_IncomingVideoCall> get copyWith =>
      __$$_IncomingVideoCallCopyWithImpl<_$_IncomingVideoCall>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) activeUsers,
    required TResult Function(MessageModel message) message,
    required TResult Function(CallerDescriptionModel callerDescriptionModel)
        incomingVideoCall,
    required TResult Function(CallerDescriptionModel receiverDescriptionModel)
        acceptedVideoCall,
    required TResult Function() rejectedVideoCall,
    required TResult Function() endedVideoCall,
  }) {
    return incomingVideoCall(callerDescriptionModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? activeUsers,
    TResult? Function(MessageModel message)? message,
    TResult? Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult? Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult? Function()? rejectedVideoCall,
    TResult? Function()? endedVideoCall,
  }) {
    return incomingVideoCall?.call(callerDescriptionModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? activeUsers,
    TResult Function(MessageModel message)? message,
    TResult Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult Function()? rejectedVideoCall,
    TResult Function()? endedVideoCall,
    required TResult orElse(),
  }) {
    if (incomingVideoCall != null) {
      return incomingVideoCall(callerDescriptionModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActiveUsers value) activeUsers,
    required TResult Function(_Message value) message,
    required TResult Function(_IncomingVideoCall value) incomingVideoCall,
    required TResult Function(_AcceptedVideoCall value) acceptedVideoCall,
    required TResult Function(_RejectedVideoCall value) rejectedVideoCall,
    required TResult Function(_EndedVideoCall value) endedVideoCall,
  }) {
    return incomingVideoCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveUsers value)? activeUsers,
    TResult? Function(_Message value)? message,
    TResult? Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult? Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult? Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult? Function(_EndedVideoCall value)? endedVideoCall,
  }) {
    return incomingVideoCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveUsers value)? activeUsers,
    TResult Function(_Message value)? message,
    TResult Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult Function(_EndedVideoCall value)? endedVideoCall,
    required TResult orElse(),
  }) {
    if (incomingVideoCall != null) {
      return incomingVideoCall(this);
    }
    return orElse();
  }
}

abstract class _IncomingVideoCall implements WsDataModel {
  const factory _IncomingVideoCall(
          {required final CallerDescriptionModel callerDescriptionModel}) =
      _$_IncomingVideoCall;

  CallerDescriptionModel get callerDescriptionModel;
  @JsonKey(ignore: true)
  _$$_IncomingVideoCallCopyWith<_$_IncomingVideoCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptedVideoCallCopyWith<$Res> {
  factory _$$_AcceptedVideoCallCopyWith(_$_AcceptedVideoCall value,
          $Res Function(_$_AcceptedVideoCall) then) =
      __$$_AcceptedVideoCallCopyWithImpl<$Res>;
  @useResult
  $Res call({CallerDescriptionModel receiverDescriptionModel});

  $CallerDescriptionModelCopyWith<$Res> get receiverDescriptionModel;
}

/// @nodoc
class __$$_AcceptedVideoCallCopyWithImpl<$Res>
    extends _$WsDataModelCopyWithImpl<$Res, _$_AcceptedVideoCall>
    implements _$$_AcceptedVideoCallCopyWith<$Res> {
  __$$_AcceptedVideoCallCopyWithImpl(
      _$_AcceptedVideoCall _value, $Res Function(_$_AcceptedVideoCall) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverDescriptionModel = null,
  }) {
    return _then(_$_AcceptedVideoCall(
      receiverDescriptionModel: null == receiverDescriptionModel
          ? _value.receiverDescriptionModel
          : receiverDescriptionModel // ignore: cast_nullable_to_non_nullable
              as CallerDescriptionModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CallerDescriptionModelCopyWith<$Res> get receiverDescriptionModel {
    return $CallerDescriptionModelCopyWith<$Res>(
        _value.receiverDescriptionModel, (value) {
      return _then(_value.copyWith(receiverDescriptionModel: value));
    });
  }
}

/// @nodoc

class _$_AcceptedVideoCall implements _AcceptedVideoCall {
  const _$_AcceptedVideoCall({required this.receiverDescriptionModel});

  @override
  final CallerDescriptionModel receiverDescriptionModel;

  @override
  String toString() {
    return 'WsDataModel.acceptedVideoCall(receiverDescriptionModel: $receiverDescriptionModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptedVideoCall &&
            (identical(
                    other.receiverDescriptionModel, receiverDescriptionModel) ||
                other.receiverDescriptionModel == receiverDescriptionModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiverDescriptionModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptedVideoCallCopyWith<_$_AcceptedVideoCall> get copyWith =>
      __$$_AcceptedVideoCallCopyWithImpl<_$_AcceptedVideoCall>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) activeUsers,
    required TResult Function(MessageModel message) message,
    required TResult Function(CallerDescriptionModel callerDescriptionModel)
        incomingVideoCall,
    required TResult Function(CallerDescriptionModel receiverDescriptionModel)
        acceptedVideoCall,
    required TResult Function() rejectedVideoCall,
    required TResult Function() endedVideoCall,
  }) {
    return acceptedVideoCall(receiverDescriptionModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? activeUsers,
    TResult? Function(MessageModel message)? message,
    TResult? Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult? Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult? Function()? rejectedVideoCall,
    TResult? Function()? endedVideoCall,
  }) {
    return acceptedVideoCall?.call(receiverDescriptionModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? activeUsers,
    TResult Function(MessageModel message)? message,
    TResult Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult Function()? rejectedVideoCall,
    TResult Function()? endedVideoCall,
    required TResult orElse(),
  }) {
    if (acceptedVideoCall != null) {
      return acceptedVideoCall(receiverDescriptionModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActiveUsers value) activeUsers,
    required TResult Function(_Message value) message,
    required TResult Function(_IncomingVideoCall value) incomingVideoCall,
    required TResult Function(_AcceptedVideoCall value) acceptedVideoCall,
    required TResult Function(_RejectedVideoCall value) rejectedVideoCall,
    required TResult Function(_EndedVideoCall value) endedVideoCall,
  }) {
    return acceptedVideoCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveUsers value)? activeUsers,
    TResult? Function(_Message value)? message,
    TResult? Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult? Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult? Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult? Function(_EndedVideoCall value)? endedVideoCall,
  }) {
    return acceptedVideoCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveUsers value)? activeUsers,
    TResult Function(_Message value)? message,
    TResult Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult Function(_EndedVideoCall value)? endedVideoCall,
    required TResult orElse(),
  }) {
    if (acceptedVideoCall != null) {
      return acceptedVideoCall(this);
    }
    return orElse();
  }
}

abstract class _AcceptedVideoCall implements WsDataModel {
  const factory _AcceptedVideoCall(
          {required final CallerDescriptionModel receiverDescriptionModel}) =
      _$_AcceptedVideoCall;

  CallerDescriptionModel get receiverDescriptionModel;
  @JsonKey(ignore: true)
  _$$_AcceptedVideoCallCopyWith<_$_AcceptedVideoCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RejectedVideoCallCopyWith<$Res> {
  factory _$$_RejectedVideoCallCopyWith(_$_RejectedVideoCall value,
          $Res Function(_$_RejectedVideoCall) then) =
      __$$_RejectedVideoCallCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RejectedVideoCallCopyWithImpl<$Res>
    extends _$WsDataModelCopyWithImpl<$Res, _$_RejectedVideoCall>
    implements _$$_RejectedVideoCallCopyWith<$Res> {
  __$$_RejectedVideoCallCopyWithImpl(
      _$_RejectedVideoCall _value, $Res Function(_$_RejectedVideoCall) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RejectedVideoCall implements _RejectedVideoCall {
  const _$_RejectedVideoCall();

  @override
  String toString() {
    return 'WsDataModel.rejectedVideoCall()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RejectedVideoCall);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) activeUsers,
    required TResult Function(MessageModel message) message,
    required TResult Function(CallerDescriptionModel callerDescriptionModel)
        incomingVideoCall,
    required TResult Function(CallerDescriptionModel receiverDescriptionModel)
        acceptedVideoCall,
    required TResult Function() rejectedVideoCall,
    required TResult Function() endedVideoCall,
  }) {
    return rejectedVideoCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? activeUsers,
    TResult? Function(MessageModel message)? message,
    TResult? Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult? Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult? Function()? rejectedVideoCall,
    TResult? Function()? endedVideoCall,
  }) {
    return rejectedVideoCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? activeUsers,
    TResult Function(MessageModel message)? message,
    TResult Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult Function()? rejectedVideoCall,
    TResult Function()? endedVideoCall,
    required TResult orElse(),
  }) {
    if (rejectedVideoCall != null) {
      return rejectedVideoCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActiveUsers value) activeUsers,
    required TResult Function(_Message value) message,
    required TResult Function(_IncomingVideoCall value) incomingVideoCall,
    required TResult Function(_AcceptedVideoCall value) acceptedVideoCall,
    required TResult Function(_RejectedVideoCall value) rejectedVideoCall,
    required TResult Function(_EndedVideoCall value) endedVideoCall,
  }) {
    return rejectedVideoCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveUsers value)? activeUsers,
    TResult? Function(_Message value)? message,
    TResult? Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult? Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult? Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult? Function(_EndedVideoCall value)? endedVideoCall,
  }) {
    return rejectedVideoCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveUsers value)? activeUsers,
    TResult Function(_Message value)? message,
    TResult Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult Function(_EndedVideoCall value)? endedVideoCall,
    required TResult orElse(),
  }) {
    if (rejectedVideoCall != null) {
      return rejectedVideoCall(this);
    }
    return orElse();
  }
}

abstract class _RejectedVideoCall implements WsDataModel {
  const factory _RejectedVideoCall() = _$_RejectedVideoCall;
}

/// @nodoc
abstract class _$$_EndedVideoCallCopyWith<$Res> {
  factory _$$_EndedVideoCallCopyWith(
          _$_EndedVideoCall value, $Res Function(_$_EndedVideoCall) then) =
      __$$_EndedVideoCallCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EndedVideoCallCopyWithImpl<$Res>
    extends _$WsDataModelCopyWithImpl<$Res, _$_EndedVideoCall>
    implements _$$_EndedVideoCallCopyWith<$Res> {
  __$$_EndedVideoCallCopyWithImpl(
      _$_EndedVideoCall _value, $Res Function(_$_EndedVideoCall) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EndedVideoCall implements _EndedVideoCall {
  const _$_EndedVideoCall();

  @override
  String toString() {
    return 'WsDataModel.endedVideoCall()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EndedVideoCall);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) activeUsers,
    required TResult Function(MessageModel message) message,
    required TResult Function(CallerDescriptionModel callerDescriptionModel)
        incomingVideoCall,
    required TResult Function(CallerDescriptionModel receiverDescriptionModel)
        acceptedVideoCall,
    required TResult Function() rejectedVideoCall,
    required TResult Function() endedVideoCall,
  }) {
    return endedVideoCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? activeUsers,
    TResult? Function(MessageModel message)? message,
    TResult? Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult? Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult? Function()? rejectedVideoCall,
    TResult? Function()? endedVideoCall,
  }) {
    return endedVideoCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? activeUsers,
    TResult Function(MessageModel message)? message,
    TResult Function(CallerDescriptionModel callerDescriptionModel)?
        incomingVideoCall,
    TResult Function(CallerDescriptionModel receiverDescriptionModel)?
        acceptedVideoCall,
    TResult Function()? rejectedVideoCall,
    TResult Function()? endedVideoCall,
    required TResult orElse(),
  }) {
    if (endedVideoCall != null) {
      return endedVideoCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActiveUsers value) activeUsers,
    required TResult Function(_Message value) message,
    required TResult Function(_IncomingVideoCall value) incomingVideoCall,
    required TResult Function(_AcceptedVideoCall value) acceptedVideoCall,
    required TResult Function(_RejectedVideoCall value) rejectedVideoCall,
    required TResult Function(_EndedVideoCall value) endedVideoCall,
  }) {
    return endedVideoCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveUsers value)? activeUsers,
    TResult? Function(_Message value)? message,
    TResult? Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult? Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult? Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult? Function(_EndedVideoCall value)? endedVideoCall,
  }) {
    return endedVideoCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveUsers value)? activeUsers,
    TResult Function(_Message value)? message,
    TResult Function(_IncomingVideoCall value)? incomingVideoCall,
    TResult Function(_AcceptedVideoCall value)? acceptedVideoCall,
    TResult Function(_RejectedVideoCall value)? rejectedVideoCall,
    TResult Function(_EndedVideoCall value)? endedVideoCall,
    required TResult orElse(),
  }) {
    if (endedVideoCall != null) {
      return endedVideoCall(this);
    }
    return orElse();
  }
}

abstract class _EndedVideoCall implements WsDataModel {
  const factory _EndedVideoCall() = _$_EndedVideoCall;
}
