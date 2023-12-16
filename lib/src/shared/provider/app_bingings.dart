import 'package:flutter/material.dart';
import 'package:memento/src/repository/configuration_service.dart';
import 'package:memento/src/shared/realm/realm_config.dart';
import 'package:memento/src/store/app_store.dart';
import 'package:provider/provider.dart';
import 'package:realm/realm.dart';

class AppBindings extends StatelessWidget {
  const AppBindings({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Realm>(
          create: ((context) => Realm(config)),
        ),
        Provider<ConfigurationService>(
          create: ((context) =>
              ConfigurationServiceImpl(context.read<Realm>())),
        ),
        Provider<AppStore>(
          create: (context) => AppStore(context.read<ConfigurationService>()),
        )
      ],
      child: child,
    );
  }
}
