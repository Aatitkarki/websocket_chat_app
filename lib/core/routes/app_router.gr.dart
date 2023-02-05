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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:chat_app/features/chat/page/chat_page.dart' as _i2;
import 'package:chat_app/features/home/page/home_page.dart' as _i1;
import 'package:chat_app/models/user_model.dart' as _i5;
import 'package:flutter/material.dart' as _i4;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.ChatPage(
          key: args.key,
          receiverModel: args.receiverModel,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home',
          fullMatch: true,
        ),
        _i3.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i3.RouteConfig(
          ChatRoute.name,
          path: '/chat',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.ChatPage]
class ChatRoute extends _i3.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i4.Key? key,
    required _i5.UserModel receiverModel,
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

  final _i4.Key? key;

  final _i5.UserModel receiverModel;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, receiverModel: $receiverModel}';
  }
}
