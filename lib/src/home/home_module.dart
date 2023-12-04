import 'package:flutter_modular/flutter_modular.dart';
import 'package:memento/src/home/home_page.dart';
import 'package:memento/src/home/task_page.dart';

class HomeModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const HomePage());
    r.child('/task', child: (context) => const TaskPage());
    super.routes(r);
  }
}
