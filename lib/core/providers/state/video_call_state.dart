import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/caller_description.dart';
part 'video_call_state.freezed.dart';

@freezed
class VideoCallState with _$VideoCallState {
  const factory VideoCallState.initial() = _Initial;
  const factory VideoCallState.startedVideoCall(
          {required CallerDescriptionModel callerDescriptionModel}) =
      _StartedVideoCall;
  const factory VideoCallState.incomingVideoCall(
          {required CallerDescriptionModel callerDescriptionModel}) =
      _IncomingVideoCall;
  const factory VideoCallState.videoCallAccepted() = _VideoCallAccepted;
  const factory VideoCallState.videoCallEnded() = _VideoCallEnded;
}
