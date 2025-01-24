import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/data/repositories/yaml/yaml.dart';
import 'package:myspace_flutter_tool/src/data/repositories/yaml/yaml_local.dart';
import 'package:myspace_flutter_tool/src/presentation/pages/pubspec/page.dart';
import 'package:myspace_flutter_tool/src/presentation/pages/redux_cases/form/form_page.dart';

import 'src/data/redux/app/reducer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appStore = AppStore<FlutterToolAppState>(
    initialState: FlutterToolAppState.initial(),
    reducer: ReduxAppReducer(),
  );

  appStore.register<YamlRepo>(YamlRepoLocal());

  runApp(
    AppStoreProvider(
      store: appStore.createStore(),
      child: const MySpaceFlutterToolApp(),
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
      title: 'My Space Flutter Tool',
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
        return const PubspecPage();
      },
    ),

    //form page
    GoRoute(
      path: "/form",
      builder: (context, state) {
        return FormPage();
      },
    ),
  ],
);


  // await windowManager.ensureInitialized();

  // WindowOptions windowOptions = const WindowOptions(
  //   size: Size(1280, 800),
  //   minimumSize: Size(1280, 800),
  //   maximumSize: Size(1280, 800),
  //   center: true,
  // );

  // await windowManager.waitUntilReadyToShow(windowOptions);
