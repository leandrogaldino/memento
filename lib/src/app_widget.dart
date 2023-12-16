import 'package:flutter/material.dart';
import 'package:memento/src/pages/configutation/configuration_page.dart';
import 'package:memento/src/pages/home/home_page.dart';
import 'package:memento/src/shared/provider/app_bingings.dart';
import 'package:memento/src/shared/themes/themes.dart';
import 'package:memento/src/store/app_store.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: context.read<AppStore>().themeMode.value,
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: {
        '/home': (context) => const HomePage(),
        '/config': (context) => const ConfigurationPage(),
      },
      initialRoute: '/home',
    );
  }
}
