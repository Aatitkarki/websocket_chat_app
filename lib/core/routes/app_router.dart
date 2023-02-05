import 'package:auto_route/auto_route.dart';

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

    // AutoRoute(
    //   page: DashboardWrapperPage,
    //   children: [
    //     AutoRoute<void>(page: DashboardPage, path: '', children: [
    //       AutoRoute<void>(page: TeameupPage, path: AppRoutes.teamupPage),
    //       AutoRoute<void>(page: SettingsPage, path: AppRoutes.settingsPage),
    //       AutoRoute<void>(page: ChatPage, path: AppRoutes.chat),
    //       AutoRoute<void>(page: ProfilePage, path: AppRoutes.profilePage),
    //     ])
    //   ],
    // ),
  ],
)
class $AppRouter {}
