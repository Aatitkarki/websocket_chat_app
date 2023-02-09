import 'package:chat_app/models/rtc_candidate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

import '../../models/user_message_list.dart';
import '../service/web_socket_service.dart';

final videoDataProvider =
    StateNotifierProvider<VideoDataProvider, RTCIceCandidate?>(
        VideoDataProvider.new);

final socketService = StreamProvider((ref) {
  final ss = ref.read(webSocketProvider);
  return ss.socketResponse.stream.asBroadcastStream();
});

class VideoDataProvider extends StateNotifier<RTCIceCandidate?> {
  final StateNotifierProviderRef ref;
  WebSocketService get _socketServices => ref.read(webSocketProvider);
  VideoDataProvider(this.ref) : super(null) {
    ref.listen(socketService, (previous, next) {
      final data = next.value;
      if (data != null) {
        data.whenOrNull(incomingVideoCall: (rtcIceCandidate) {
          state = rtcIceCandidate;
        });
      }
    });
  }

  void startVideoCall(RtcCandidateModel rtcCandidateModel) {
    _socketServices.startVideoCall(rtcCandidateModel);
  }
}
