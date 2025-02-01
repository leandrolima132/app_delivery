import 'package:flutter/material.dart';

// import 'package:flutter_modular/flutter_modular.dart';

import 'navigationService.dart';
import 'theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Vai Bem Saúde',
      theme: appThemeData,
      // localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [Locale('pt', 'BR')],
    );
  }
}
