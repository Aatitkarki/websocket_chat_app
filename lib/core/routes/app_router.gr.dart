// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:chat_app/features/call/page/video_call_page.dart' as _i3;
import 'package:chat_app/features/chat/page/chat_page.dart' as _i2;
import 'package:chat_app/features/home/page/home_page.dart' as _i1;
import 'package:chat_app/models/caller_description.dart' as _i7;
import 'package:chat_app/models/user_model.dart' as _i6;
import 'package:flutter/material.dart' as _i5;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.ChatPage(
          key: args.key,
          receiverModel: args.receiverModel,
        ),
      );
    },
    VideoCallRoute.name: (routeData) {
      final args = routeData.argsAs<VideoCallRouteArgs>(
          orElse: () => const VideoCallRouteArgs());
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.VideoCallPage(
          user: args.user,
          incomingCallerDesModel: args.incomingCallerDesModel,
          isCaller: args.isCaller,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home',
          fullMatch: true,
        ),
        _i4.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i4.RouteConfig(
          ChatRoute.name,
          path: '/chat',
        ),
        _i4.RouteConfig(
          VideoCallRoute.name,
          path: '/videoCall',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.ChatPage]
class ChatRoute extends _i4.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i5.Key? key,
    required _i6.UserModel receiverModel,
  }) : super(
          ChatRoute.name,
          path: '/chat',
          args: ChatRouteArgs(
            key: key,
            receiverModel: receiverModel,
          ),
        );

  static const String name = 'ChatRoute';
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.receiverModel,
  });

  final _i5.Key? key;

  final _i6.UserModel receiverModel;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, receiverModel: $receiverModel}';
  }
}

/// generated route for
/// [_i3.VideoCallPage]
class VideoCallRoute extends _i4.PageRouteInfo<VideoCallRouteArgs> {
  VideoCallRoute({
    _i6.UserModel? user,
    _i7.CallerDescriptionModel? incomingCallerDesModel,
    bool isCaller = true,
    _i5.Key? key,
  }) : super(
          VideoCallRoute.name,
          path: '/videoCall',
          args: VideoCallRouteArgs(
            user: user,
            incomingCallerDesModel: incomingCallerDesModel,
            isCaller: isCaller,
            key: key,
          ),
        );

  static const String name = 'VideoCallRoute';
}

class VideoCallRouteArgs {
  const VideoCallRouteArgs({
    this.user,
    this.incomingCallerDesModel,
    this.isCaller = true,
    this.key,
  });

  final _i6.UserModel? user;

  final _i7.CallerDescriptionModel? incomingCallerDesModel;

  final bool isCaller;

  final _i5.Key? key;

  @override
  String toString() {
    return 'VideoCallRouteArgs{user: $user, incomingCallerDesModel: $incomingCallerDesModel, isCaller: $isCaller, key: $key}';
  }
}
