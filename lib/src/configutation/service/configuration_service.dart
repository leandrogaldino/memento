import 'package:memento/src/shared/services/realm/models/configuration_model.dart';
import 'package:realm/realm.dart';

abstract class ConfigurationService {
  ConfigurationModel getConfiguration();
  void save(String themeModeName, DateTime? syncDate);
  void deleteAll();
}

class ConfigurationServiceImpl extends ConfigurationService {
  final Realm realm;

  ConfigurationServiceImpl(this.realm);

  @override
  ConfigurationModel getConfiguration() {
    return realm.all<ConfigurationModel>().first;
  }

  @override
  void save(String themeModeName, DateTime? syncDate) {
    final ConfigurationModel configuration = getConfiguration();
    realm.write(() {
      configuration.themeModeName = themeModeName;
      configuration.syncDate = syncDate;
    });
  }

  @override
  void deleteAll() {
    realm.deleteAll();
  }
}
