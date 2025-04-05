import 'package:flutter/material.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_flutter_tool/features/dependency/dependency_page_vm.dart';
import 'package:repositories/yaml/yaml.dart';

class DependencyBody extends StatelessWidget {
  const DependencyBody({super.key, required this.vm});

  final DependencyPageVm vm;

  @override
  Widget build(BuildContext context) {
    final yaml = vm.yamlModel;
    if (yaml == null) return const SizedBox.shrink();
    return _DataTable(list: yaml.dependencies);
  }
}

class _DataTable extends StatelessWidget {
  const _DataTable({
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
            break;
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
