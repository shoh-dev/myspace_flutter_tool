import 'package:flutter/material.dart';
import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/app/redux/app_reducer.dart';
import 'package:repositories/yaml/yaml.dart';

import 'app/app.dart';

void main() {
  final appStore = AppStore<AppState>(
    initialState: AppState.initial(),
    reducer: ReduxAppReducer(),
  );

  appStore.register<YamlRepo>(YamlRepoLocal());

  runApp(App(
    appStore: appStore.createStore(),
  ));
}
