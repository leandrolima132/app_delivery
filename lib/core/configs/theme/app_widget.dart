import 'package:flutter/material.dart';
import 'package:mobile_app/routing/router.dart';

import 'app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      title: 'Vai Bem Saúde',
      theme: appThemeData,
    );
  }
}
