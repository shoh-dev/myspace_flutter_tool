import 'package:flutter/material.dart';
import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_flutter_tool/components/error_indicator.dart';
import 'package:myspace_flutter_tool/features/dependency/dependency_page_vm.dart';
import 'package:repositories/yaml/models/yaml_dependency.dart';

class DependencyPage extends StatelessWidget {
  const DependencyPage({super.key, required this.vm});

  final DependencyPageVm vm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: vm.loadYaml,
        builder: (context, child) {
          if (vm.loadYaml.isRunning) {
            return const Center(child: CircularProgressIndicator());
          }

          final result = vm.loadYaml.result!;
          return switch (result) {
            ResultError<void>() => ErrorIndicator(
                title: "Error",
                label: result.e.toString(),
                onPressed: vm.loadYaml.execute,
              ),
            ResultOk<void>() => child!,
          };
        },
        child: const SizedBox()
        // DependencyTable(
        // list: vm.loadYaml.result?.isOk == true
        // ? vm.loadYaml.result!.asOk.value
        // : [],
        // ),
        );
    //page vm requires dependency
  }
}

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
        switch (value.value) {
          case "check_version":
            break;
          case "remove":
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
