import 'package:memento/src/models/configuration_model.dart';
import 'package:memento/src/models/task_model.dart';
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
