import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_flutter_tool/src/data/redux/app/app_store.dart';
import 'package:myspace_flutter_tool/src/data/repositories/yaml/yaml_local.dart';
import 'package:myspace_flutter_tool/src/presentation/pages/homepage/homepage.dart';
import 'package:myspace_flutter_tool/src/presentation/pages/homepage/homepage_vm.dart';
import 'package:provider/provider.dart';

import 'src/data/redux/states/ip_state/model/model2.dart';
import 'src/data/repositories/yaml/yaml.dart';
// import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Given some arbitrary JSON:
  var userJson = {
    'age': 5,
    'name': 'Roger',
    'username': 'roger1337',
    'city': 'New York'
  };

  // Use the generated members:
  var user = User.fromJson(userJson);
  print(user);
  print(user.toJson());

  // Must add this line.
  // await windowManager.ensureInitialized();

  // WindowOptions windowOptions = const WindowOptions(
  //   size: Size(1280, 800),
  //   minimumSize: Size(1280, 800),
  //   maximumSize: Size(1280, 800),
  //   center: true,
  // );

  // await windowManager.waitUntilReadyToShow(windowOptions);

  runApp(
    MultiProvider(
      providers: [
        Provider<YamlRepo>(
          create: (context) => YamlRepoLocal(),
        ),
      ],
      child:
          StoreProvider(store: appStore, child: const MySpaceFlutterToolApp()),
    ),
  );
}

class MySpaceFlutterToolApp extends StatefulWidget {
  const MySpaceFlutterToolApp({super.key});

  @override
  State<MySpaceFlutterToolApp> createState() => _MySpaceFlutterToolAppState();
}

class _MySpaceFlutterToolAppState extends State<MySpaceFlutterToolApp> {
  final fCodeTheme = FCodeTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: fCodeTheme.lightTheme,
      darkTheme: fCodeTheme.darkTheme,
      routerConfig: _router,
    );
  }
}

GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const Homepage();
      },
    ),
  ],
);
