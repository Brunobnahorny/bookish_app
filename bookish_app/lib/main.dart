import 'package:bookish_app/src/core/dependency_injection/dependency_injection_service.dart';
import 'package:bookish_app/src/core/messenger/app_messenger.dart';
import 'package:bookish_app/src/core/router/app_router.dart';
import 'package:bookish_app/src/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'src/presentation/app.dart';

void main() async {
  final dependencyInjectionService = await DependencyInjectionService.init();

  runApp(
    MyApp(
      appRouter: dependencyInjectionService.find<AppRouter>(),
      appMessenger: dependencyInjectionService.find<AppMessenger>(),
      appTheme: dependencyInjectionService.find<AppTheme>(),
    ),
  );
}
