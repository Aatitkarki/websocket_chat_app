import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

import 'core/routes/app_router.gr.dart';
import 'core/widgets/app_error_widget.dart';

class App extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveSizer(
      designSize: const Size(375, 813),
      builder: (context) {
        return MaterialApp.router(
          restorationScopeId: 'root',
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
          builder: (BuildContext context, Widget? child) {
            ErrorWidget.builder =
                (FlutterErrorDetails details) => AppErrorWidget(
                      message: details.exceptionAsString(),
                    );
            return child!;
          },
        );
      },
    );
  }
}
