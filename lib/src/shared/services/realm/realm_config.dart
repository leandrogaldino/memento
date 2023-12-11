import 'package:memento/src/shared/services/realm/models/configuration_model.dart';
import 'package:memento/src/shared/services/realm/models/task_model.dart';
import 'package:realm/realm.dart';

LocalConfiguration config = Configuration.local(
  [
    ConfigurationModel.schema,
    TaskModel.schema,
    TaskBoardModel.schema,
  ],
  initialDataCallback: (realm) {
    realm.add(
      ConfigurationModel('system'),
    );
  },
);
