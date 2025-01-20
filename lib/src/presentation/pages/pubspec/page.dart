import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_flutter_tool/src/data/models/pubspec_yaml.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/pubspec_yaml/actions/get_pubspec_yaml.dart';
import 'package:myspace_flutter_tool/src/presentation/pages/pubspec/components/dependency_table.dart';

enum Status { success, failed, processing }

class PubspecPage
    extends ResultStateProvider<FlutterToolAppState, PubspecYamlModel> {
  const PubspecPage() : super(key: const Key("PubspecPage"));

  @override
  FutureOr<void> onInitialBuild(Result<PubspecYamlModel> vm) {
    const GetPubspecYamlAction().execute();
  }

  @override
  Widget? wrapper(Widget child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pubspec Page"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }

  @override
  Widget okBuilder(BuildContext context, ResultOk<PubspecYamlModel> vm) {
    return LayoutComponent.row(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LayoutComponent.column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TextComponent.any("Dependencies"),
            DependencyTable(list: vm.value.dependencies),
          ],
        ),
        LayoutComponent.column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TextComponent.any("Dev Dependencies"),
            DependencyTable(list: vm.value.devDependencies),
          ],
        )
      ],
    );
  }

  @override
  Result<PubspecYamlModel> selector(FlutterToolAppState state) {
    return state.pubspecYamlState.pubspecYaml;
  }
}
