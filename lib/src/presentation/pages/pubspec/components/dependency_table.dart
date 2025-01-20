import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_flutter_tool/src/data/models/pubspec_dependency.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/pubspec_yaml/actions/get_pubspec_yaml.dart';
import 'package:pub_api_client/pub_api_client.dart';

final client = PubClient();

class DependencyTable extends StatelessWidget {
  const DependencyTable({
    super.key,
    required this.list,
  });

  final List<PubspecDependencyModel> list;

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
            client.packageInfo(packageName).then((value) {
              print(value.latest.version);
            });
            break;
          case "remove":
            Process.run("flutter", [
              "pub",
              "remove",
              packageName,
            ]).then((value) {
              print(value.stdout);
              if (value.exitCode == 0) {
                const GetPubspecYamlAction().execute();
              }
            });
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
