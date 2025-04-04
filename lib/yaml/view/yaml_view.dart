// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:myspace_core/myspace_core.dart';
// import 'package:myspace_design_system/myspace_design_system.dart';
// import 'package:myspace_flutter_tool/app/app.dart';
// import 'package:myspace_flutter_tool/yaml/redux/actions/get_yaml_action.dart';
// import 'package:repositories/yaml/yaml.dart';

// class YamlView extends StateStatusProvider<AppState> {
//   const YamlView({super.key});

//   @override
//   ReduxStateStatus selector(AppState state) => state.yamlState.status;

//   @override
//   Widget? wrapper(Widget child) => Center(child: child);

//   @override
//   Future<void> onInitialBuild(ReduxStateStatus vm) async {
//     const GetYamlAction().execute();
//   }

//   @override
//   Widget loadedBuilder(BuildContext context, ReduxStateLoaded vm) {
//     return const Text("Ok");
//   }

//   @override
//   Widget errorBuilder(BuildContext context, ReduxStateError vm) {
//     return Text(vm.message);
//   }
// }

// // class YamlView extends StatelessWidget {
// //   const YamlView({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return StoreConnector<AppState, StateStatus>(
// //       converter: (store) => store.state.yamlState.status,
// //       onInitialBuild: (viewModel) {
// //         const GetYamlAction().execute();
// //       },
// //       onDidChange: (previousViewModel, viewModel) {
// //         if (viewModel.isError) {
// //           showErrorMessage(viewModel.toString());
// //           return;
// //         }
// //       },
// //       builder: (context, vm) {
// //         switch (vm) {
// //           case StateLoading():
// //             return const Center(
// //               child: CircularProgressIndicator(),
// //             );
// //           case StateLoaded():
// //             return const Center(
// //               child: Text("Ok"),
// //             );
// //           case StateError():
// //             return Center(
// //               child: Text(vm.message),
// //             );
// //           case StateInitial():
// //             return const Center(
// //               child: Text("Initial"),
// //             );
// //         }
// //       },
// //     );
// //   }
// // }

// // class PubspecPage extends ResultStateProvider<AppState, YamlState> {
// //   const PubspecPage() : super(key: const Key("PubspecPage"));

// //   @override
// //   FutureOr<void> onInitialBuild(Result<YamlModel> vm) {
// //     const GetPubspecYamlAction().execute();
// //   }

// //   @override
// //   Widget? wrapper(Widget child) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Pubspec Page"),
// //       ),
// //       body: SingleChildScrollView(
// //         padding: const EdgeInsets.only(
// //           top: 16,
// //         ),
// //         child: Center(
// //           child: child,
// //         ),
// //       ),
// //     );
// //   }

// //   @override
// //   Widget okBuilder(BuildContext context, ResultOk<YamlModel> vm) {
// //     return LayoutComponent.row(
// //       spacing: 16,
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         LayoutComponent.column(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             const TextComponent.any("Dependencies"),
// //             DependencyTable(list: vm.value.dependencies),
// //           ],
// //         ),
// //         LayoutComponent.column(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             const TextComponent.any("Dev Dependencies"),
// //             DependencyTable(list: vm.value.devDependencies),
// //           ],
// //         )
// //       ],
// //     );
// //   }

// //   @override
// //   Result<YamlModel> selector(AppState state) {
// //     return state.yamlState;
// //   }
// // }

// // final client = PubClient();

// import 'package:flutter/material.dart';
// import 'package:myspace_design_system/myspace_design_system.dart';
// import 'package:repositories/yaml/models/yaml_dependency.dart';
