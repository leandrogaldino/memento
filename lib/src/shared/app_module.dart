import 'package:flutter_modular/flutter_modular.dart';
import 'package:memento/src/configutation/configuration_page.dart';
import 'package:memento/src/configutation/service/configuration_service.dart';
import 'package:memento/src/home/home_module.dart';
import 'package:memento/src/shared/services/realm/realm_config.dart';
import 'package:memento/src/shared/store/app_store.dart';
import 'package:realm/realm.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module('/home', module: HomeModule());
    r.child('/config', child: (context) => const ConfigurationPage());
    super.routes(r);
  }

  @override
  void binds(Injector i) {
    i.addInstance<Realm>(Realm(config));
    i.add<ConfigurationService>(ConfigurationServiceImpl.new);
    i.addSingleton<AppStore>(AppStore.new);
    super.binds(i);
  }
}
