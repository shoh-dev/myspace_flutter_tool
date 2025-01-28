import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_flutter_tool/app/app.dart';
import 'package:myspace_flutter_tool/components/error_indicator.dart';
import 'package:myspace_flutter_tool/yaml/redux/actions/get_yaml_action.dart';
import 'package:myspace_flutter_tool/yaml/yaml.dart';
import 'package:repositories/yaml/yaml.dart';

class YamlView extends StatelessWidget {
  const YamlView({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, YamlStateStatus>(
      converter: (store) => store.state.yamlState.status,
      onInitialBuild: (viewModel) {
        const GetYamlAction().execute();
      },
      onDidChange: (previousViewModel, viewModel) {
        if (viewModel.isError) {
          showErrorMessage(viewModel.toString());
          return;
        }
      },
      builder: (context, vm) {
        switch (vm) {
          case Loading():
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Loaded():
            return const Center(
              child: Text("Ok"),
            );
          case Error():
            return Center(
              child: Text(vm.message),
            );
          case Initial():
            return const Center(
              child: Text("Initial"),
            );
        }
      },
    );
  }
}

// class PubspecPage extends ResultStateProvider<AppState, YamlState> {
//   const PubspecPage() : super(key: const Key("PubspecPage"));

//   @override
//   FutureOr<void> onInitialBuild(Result<YamlModel> vm) {
//     const GetPubspecYamlAction().execute();
//   }

//   @override
//   Widget? wrapper(Widget child) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Pubspec Page"),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.only(
//           top: 16,
//         ),
//         child: Center(
//           child: child,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget okBuilder(BuildContext context, ResultOk<YamlModel> vm) {
//     return LayoutComponent.row(
//       spacing: 16,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         LayoutComponent.column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const TextComponent.any("Dependencies"),
//             DependencyTable(list: vm.value.dependencies),
//           ],
//         ),
//         LayoutComponent.column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const TextComponent.any("Dev Dependencies"),
//             DependencyTable(list: vm.value.devDependencies),
//           ],
//         )
//       ],
//     );
//   }

//   @override
//   Result<YamlModel> selector(AppState state) {
//     return state.yamlState;
//   }
// }

// final client = PubClient();

class DependencyTable extends StatelessWidget {
  const DependencyTable({
    super.key,
    required this.list,
  });

  final List<YamlDependencyModel> list;

  @override
  Widget build(BuildContext context) {
    return DatatableComponent(
      rowActions: [
        DropdownItem(value: "check_version", label: "Check version"),
        DropdownItem(value: "remove", label: "Remove"),
      ],
      onRowActionPressed: (row, value) async {
        final packageName = row.cells[0].value;
        switch (value.value) {
          case "check_version":
            // client.packageInfo(packageName).then((value) {
            //   print(value.latest.version);
            // });
            break;
          case "remove":
          // Process.run("flutter", [
          // "pub",
          // "remove",
          // packageName,
          // ]).then((value) {
          // print(value.stdout);
          // if (value.exitCode == 0) {
          // const GetPubspecYamlAction().execute();
          // }
          // });
        }
      },
      columns: [
        ColumnDef.text(label: "Name"),
        ColumnDef.text(label: "Version"),
      ],
      rows: [
        for (var dep in list)
          RowDef(
            alwaysDisableEdit: dep.isFlutter || dep.isFlutterTest,
            cells: [
              CellDef.text(dep.name),
              CellDef.text(dep.version),
            ],
          ),
      ],
    );
  }
}
