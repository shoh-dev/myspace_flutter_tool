import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:myspace_flutter_tool/app/redux/app_state.dart';
import 'package:myspace_flutter_tool/app/view/app_view.dart';
import 'package:redux/redux.dart';

class App extends StatelessWidget {
  const App({super.key, required this.appStore});

  final Store<AppState> appStore;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: appStore,
      child: const AppView(),
    );
  }
}
