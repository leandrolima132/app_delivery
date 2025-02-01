import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: WelcomeModule()),
        // ModuleRoute('/login', module: LoginModule()),
        // ModuleRoute('/register', module: RegisterModule()),
        // ModuleRoute('/loading', module: LoadingModule()),
        // ModuleRoute('/home', module: HomeModule()),
      ];
}
