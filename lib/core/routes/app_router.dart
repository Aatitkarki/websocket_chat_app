import 'package:auto_route/auto_route.dart';
import 'package:chat_app/features/call/page/video_call_page.dart';

import '../../features/chat/page/chat_page.dart';
import '../../features/home/page/home_page.dart';
import 'app_routes.dart';
export 'app_router.gr.dart';
export 'app_routes.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<dynamic>(page: HomePage, path: AppRoutes.home, initial: true),
    AutoRoute<dynamic>(
      page: ChatPage,
      path: AppRoutes.chat,
    ),
    AutoRoute<dynamic>(page: VideoCallPage, path: AppRoutes.videoCall),
  ],
)
class $AppRouter {}
