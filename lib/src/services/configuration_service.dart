import 'package:memento/src/models/configuration_model.dart';

abstract class ConfigurationService {
  ConfigurationModel getConfiguration();
  void save(String themeModeName, DateTime? syncDate);
  void deleteAll();
}
