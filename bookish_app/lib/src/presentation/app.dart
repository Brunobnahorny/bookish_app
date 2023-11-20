import 'package:bookish_app/src/core/router/app_router.dart';
import 'package:flutter/material.dart';

import '../core/messenger/app_messenger.dart';
import '../core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  final AppMessenger appMessenger;
  final AppTheme? appTheme;

  const MyApp({
    super.key,
    required this.appRouter,
    required this.appMessenger,
    required this.appTheme,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.router,
      theme: appTheme?.themeData,
      scaffoldMessengerKey: appMessenger.scaffoldMessengerKey,
    );
  }
}
