import 'dart:convert';

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chat_app/core/extensions/extensions.dart';
import 'package:chat_app/core/providers/registeration_provider.dart';
import 'package:chat_app/core/providers/state/video_call_state.dart';
import 'package:chat_app/core/providers/video_data_provider.dart';
import 'package:chat_app/core/themes/app_colors.dart';
import 'package:chat_app/core/themes/app_styles.dart';
import 'package:chat_app/models/caller_description.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:sdp_transform/sdp_transform.dart';

class VideoCallPage extends ConsumerStatefulWidget {
  final bool isCaller;
  final UserModel? user;
  final CallerDescriptionModel? incomingCallerDesModel;

  const VideoCallPage(
      {this.user,
      this.incomingCallerDesModel,
      this.isCaller = true,
      super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VideoCallPageState();
}

class _VideoCallPageState extends ConsumerState<VideoCallPage> {
  final _localVideoRenderer = RTCVideoRenderer();
  final _remoteVideoRenderer = RTCVideoRenderer();
  final sdpController = TextEditingController();

  bool isConnected = false;

  RTCPeerConnection? _peerConnection;
  MediaStream? _localStream;

  initRenderer() async {
    await _localVideoRenderer.initialize();
    await _remoteVideoRenderer.initialize();
  }

  _getUserMedia() async {
    final Map<String, dynamic> mediaConstraints = {
      'audio': true,
      'video': {
        'facingMode': 'user',
      }
    };

    MediaStream stream =
        await navigator.mediaDevices.getUserMedia(mediaConstraints);

    _localVideoRenderer.srcObject = stream;
    return stream;
  }

  _createPeerConnecion() async {
    try {
      Map<String, dynamic> configuration = {
        "sdpSemantics": "plan-b",
        "iceServers": [
          {"url": "stun:stun.l.google.com:19302"},
        ]
      };

      final Map<String, dynamic> offerSdpConstraints = {
        "mandatory": {
          "OfferToReceiveAudio": true,
          "OfferToReceiveVideo": true,
        },
        "optional": [],
      };

      _localStream = await _getUserMedia();

      RTCPeerConnection pc =
          await createPeerConnection(configuration, offerSdpConstraints);

      setState(() {});
      if (_localStream != null) {
        pc.addStream(_localStream!);
      }
      print("hello");

      pc.onIceCandidate = (e) {
        if (e.candidate != null) {
          print(json.encode({
            'candidate': e.candidate.toString(),
            'sdpMid': e.sdpMid.toString(),
            'sdpMlineIndex': e.sdpMLineIndex,
          }));
        }
      };

      pc.onIceConnectionState = (e) {
        print(e);
      };

      pc.onAddStream = (stream) {
        print('addStream: ' + stream.id);
        _remoteVideoRenderer.srcObject = stream;
      };

      return pc;
    } catch (error) {
      print(error);
    }
  }

  void _startCall() async {
    RTCSessionDescription description =
        await _peerConnection!.createOffer({'offerToReceiveVideo': 1});
    var session = parse(description.sdp.toString());
    _peerConnection!.setLocalDescription(description);
    UserModel caller = ref.read(registerationStateProvider);
    CallerDescriptionModel callerDescriptionModel = CallerDescriptionModel(
        callerId: caller.uid,
        callerName: caller.name,
        receiverId: widget.user!.uid,
        sdp: jsonEncode(session));
    ref.read(videoDataProvider.notifier).startVideoCall(callerDescriptionModel);
  }

//TOOD: USE ANSWER BUTTON
  void _answerCall() async {
    RTCSessionDescription description =
        await _peerConnection!.createAnswer({'offerToReceiveVideo': 1});
    Map<String, dynamic> sdp = parse(description.sdp.toString());
    UserModel receiver = ref.read(registerationStateProvider);
    CallerDescriptionModel receiverDescriptionModel = CallerDescriptionModel(
        callerId: widget.incomingCallerDesModel!.callerId,
        callerName: widget.incomingCallerDesModel!.callerName,
        receiverId: receiver.uid,
        sdp: jsonEncode(sdp));
    _peerConnection!.setLocalDescription(description);

    setState(() {
      isConnected = true;
    });

    ref.read(videoDataProvider.notifier).acceptCall(receiverDescriptionModel);
  }

  void _setRemoteDescription() async {
    dynamic session = await jsonDecode(widget.incomingCallerDesModel!.sdp);
    String sdp = write(session, null);
    RTCSessionDescription description = RTCSessionDescription(sdp, 'offer');

    await _peerConnection!.setRemoteDescription(description);
  }

  void _addCandidate(String jsonString) async {
    dynamic session = await jsonDecode(jsonString);
    print(session['candidate']);
    dynamic candidate = RTCIceCandidate(
        session['candidate'], session['sdpMid'], session['sdpMlineIndex']);

    //CRASHES APP
    await _peerConnection!.addCandidate(candidate);
  }

  @override
  void initState() {
    initRenderer();
    _createPeerConnecion().then((pc) {
      _peerConnection = pc;
      if (widget.isCaller) {
        _startCall();
      } else {
        _setRemoteDescription();
      }
    });
    super.initState();
  }

  @override
  void dispose() async {
    await _localVideoRenderer.dispose();
    await _remoteVideoRenderer.dispose();
    _peerConnection = null;
    _localStream = null;
    sdpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Consumer(builder: (_, ref, child) {
        String callerName = '';
        String callerId = '';

        ref.watch(videoDataProvider).maybeMap(
          orElse: () {
            isConnected = false;
          },
          incomingVideoCall: (value) {
            callerName = value.callerDescriptionModel.callerName;
            callerId = value.callerDescriptionModel.callerId;
          },
          videoCallAccepted: (data) {
            _addCandidate(data.receiverDescriptionModel.sdp);
            isConnected = true;
          },
          videoCallEnded: (value) {
            context.router.pop();
          },
          videoCallRejected: (value) {
            context.router.pop();
          },
        );
        return Stack(
          children: [
            if (isConnected)
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  key: const Key('remote'),
                  decoration: const BoxDecoration(color: Colors.black),
                  child: RTCVideoView(_remoteVideoRenderer),
                ),
              ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: isConnected ? 5.w : 0,
                    vertical: isConnected ? 5.h : 0),
                height: isConnected ? 160.h : null,
                width: isConnected ? 120.w : null,
                key: const Key('local'),
                decoration: const BoxDecoration(color: Colors.black),
                child: RTCVideoView(_localVideoRenderer),
              ),
            ),
            if (!isConnected && !widget.isCaller) ...[
              Positioned(
                left: 0,
                right: 0,
                top: 30.h,
                child: Center(
                  child: Text(
                    "$callerName is Calling",
                    style: AppStyles.text24PxSemiBold.textGrey,
                  ),
                ),
              ),
              Positioned(
                  bottom: 70.h,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          ref
                              .read(videoDataProvider.notifier)
                              .rejectCall(callerId);
                          context.router.pop();
                        },
                        child: CircleAvatar(
                          backgroundColor: AppColors.textGrey,
                          radius: 40.r,
                          child: Center(
                            child: Icon(
                              Icons.phone_disabled,
                              size: 40.r,
                              color: AppColors.statusRed,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _answerCall();
                        },
                        child: CircleAvatar(
                          backgroundColor: AppColors.textGrey,
                          radius: 40.r,
                          child: Center(
                            child: Icon(
                              Icons.phone_rounded,
                              size: 40.r,
                              color: AppColors.statusGreen,
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
            ]
          ],
        );
      }),
    ));
  }
}
