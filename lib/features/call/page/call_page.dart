// import 'package:chat_app/core/providers/registeration_provider.dart';
// import 'package:chat_app/core/providers/video_data_provider.dart';
// import 'package:chat_app/models/rtc_candidate.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_webrtc/flutter_webrtc.dart';

// class VideoCallPage extends ConsumerStatefulWidget {
//   final bool isCalling;
//   final String receiverId;
//   const VideoCallPage(
//       {required this.receiverId, this.isCalling = true, super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _VideoCallPageState();
// }

// class _VideoCallPageState extends ConsumerState<VideoCallPage> {
//   late RTCPeerConnection _peerConnection;
//   RTCVideoRenderer _localRenderer = RTCVideoRenderer();
//   RTCVideoRenderer _remoteRenderer = RTCVideoRenderer();

//   @override
//   void initState() {
//     super.initState();
//     initRTC();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _localRenderer.dispose();
//     _remoteRenderer.dispose();
//     _peerConnection.close();
//   }

//   Future<void> initRTC() async {
//     _peerConnection = await createPeerConnection();
//     _peerConnection.onIceCandidate = (candidate) {
//       String callerId = ref.read(registerationStateProvider).uid;
//       RtcCandidateModel rtcCandidateModel = RtcCandidateModel(
//           callerId: callerId,
//           receiverId: widget.receiverId,
//           candidate: candidate.candidate,
//           sdpMLineIndex: candidate.sdpMLineIndex,
//           sdpMid: candidate.sdpMid);
//       ref.read(videoDataProvider.notifier).startVideoCall(rtcCandidateModel);
//     };

//     _peerConnection.onAddStream = (stream) {
//       _remoteRenderer.srcObject = stream;
//     };
//     late MediaStream stream;
//     final Map<String, dynamic> mediaConstraints = {
//       'audio': widget.isCalling ? false : true,
//       'video': widget.isCalling
//           ? true
//           : {
//               'mandatory': {
//                 'minWidth':
//                     '640', // Provide your own width, height and frame rate here
//                 'minHeight': '480',
//                 'minFrameRate': '30',
//               },
//               'facingMode': 'user',
//               'optional': [],
//             }
//     };
//     stream = await navigator.mediaDevices.getDisplayMedia(mediaConstraints);

//     _localRenderer.srcObject = stream;
//     _peerConnection.addStream(stream);

//     // _channel.stream.listen((message) {
//     //   var data = jsonDecode(message);
//     //   if (data["candidate"] != null) {
//     //     _peerConnection.addCandidate(RTCIceCandidate(
//     //         data["candidate"]["candidate"],
//     //         data["candidate"]["sdpMid"],
//     //         data["candidate"]["sdpMLineIndex"]));
//     //   }
//     // });
//   }

//   // Future<RTCPeerConnection> createPeerConnection() async {
//   //   var pc = RTCPeerConnection();
//   //   return pc;
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           child: Column(
//             children: <Widget>[
//               Expanded(child: RTCVideoView(_localRenderer)),
//               Expanded(child: RTCVideoView(_remoteRenderer)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
