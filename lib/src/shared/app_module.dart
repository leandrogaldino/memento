import 'package:flutter_modular/flutter_modular.dart';
import 'package:memento/src/configutation/configuration_page.dart';
import 'package:memento/src/home/home_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module('/home', module: HomeModule());
    r.child('/config', child: (context) => const ConfigurationPage());
    super.routes(r);
  }
}
