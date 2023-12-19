import 'package:memento/src/models/configuration_model.dart';
import 'package:memento/src/services/configuration_service.dart';
import 'package:realm/realm.dart';

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
