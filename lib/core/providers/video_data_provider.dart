import 'package:chat_app/core/providers/state/video_call_state.dart';
import 'package:chat_app/models/caller_description.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

import '../../models/user_message_list.dart';
import '../service/web_socket_service.dart';

final videoDataProvider =
    StateNotifierProvider<VideoDataProvider, VideoCallState>(
        VideoDataProvider.new);

final socketService = StreamProvider((ref) {
  final ss = ref.read(webSocketProvider);
  return ss.socketResponse.stream.asBroadcastStream();
});

class VideoDataProvider extends StateNotifier<VideoCallState> {
  final StateNotifierProviderRef ref;
  WebSocketService get _socketServices => ref.read(webSocketProvider);
  VideoDataProvider(this.ref) : super(const VideoCallState.initial()) {
    ref.listen(socketService, (previous, next) {
      final data = next.value;
      if (data != null) {
        data.whenOrNull(incomingVideoCall: (callerDescriptionModel) {
          state = VideoCallState.incomingVideoCall(
              callerDescriptionModel: callerDescriptionModel);
        });
      }
    });
  }

  void startVideoCall(CallerDescriptionModel callerDescriptionModel) {
    _socketServices.startVideoCall(callerDescriptionModel);
  }
}
