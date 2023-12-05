import 'package:flutter_modular/flutter_modular.dart';
import 'package:memento/src/configutation/configuration_page.dart';
import 'package:memento/src/home/home_module.dart';
import 'package:memento/src/shared/store/app_store.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module('/home', module: HomeModule());
    r.child('/config', child: (context) => const ConfigurationPage());
    super.routes(r);
  }

  @override
  void binds(Injector i) {
    i.addSingleton(AppStore.new);
    super.binds(i);
  }
}
