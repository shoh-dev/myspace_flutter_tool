import 'package:flutter/material.dart';
import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/actions/actions.dart';

enum Status { success, failed, processing }

class MyModel {
  final Status status;
  final String email;
  final double amount;

  const MyModel({
    required this.status,
    required this.email,
    required this.amount,
  });
}

const List<MyModel> models = [
  MyModel(status: Status.success, email: 'ken99@yahoo.com', amount: 316),
  MyModel(status: Status.failed, email: 'carmella@hotmail.com', amount: 721),
  MyModel(status: Status.success, email: 'Silas22@gmail.com', amount: 874),
  MyModel(
      status: Status.processing, email: 'Monserrat44@gmail.com', amount: 837),
  MyModel(status: Status.success, email: 'Abe45@gmail.com', amount: 232323),
];

class Homepage extends StatefulComonent {
  const Homepage({super.key});

  @override
  ComponentState<Homepage> createState() => _HomepageState();
}

class _HomepageState extends ComponentState<Homepage> {
  final DatatableManager manager = DatatableManager();

  @override
  void initState() {
    manager.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(manager.getSortColumn?.label.toString() ?? "-"),
      ),
      body: Center(
        child: SizedBox(
          width: 600,
          child: DatatableComponent(
            manager: manager,
            columns: [
              ColumnDef.text(label: "Status"),
              ColumnDef.text(label: "Email"),
              ColumnDef.number(label: "Amount"),
            ],
            rows: [
              for (var model in models)
                RowDef(
                  rowCells: [
                    CellDef.text(text: model.status.name.toUpperCase()),
                    CellDef.text(text: model.email),
                    CellDef.number(number: model.amount),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Homepage
//     extends ResultStateProvider<FlutterToolAppState, Map<String, dynamic>> {
//   Homepage({super.key = const Key("Homepage")});

//   DatatableManager? manager;

//   @override
//   Widget wrapper(Widget child) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(manager.toString()),
//       ),
//       body: Center(
//         child: SizedBox(
//           width: 600,
//           child: DatatableComponent(
//             onLoaded: (value) => manager = value,
//             columns: [
//               ColumnDef.text(label: "Status"),
//               ColumnDef.text(label: "Email"),
//               ColumnDef.number(label: "Amount"),
//             ],
//             rows: [
//               for (var model in models)
//                 RowDef(
//                   cells: [
//                     CellDef.text(text: model.status.name.toUpperCase()),
//                     CellDef.text(text: model.email),
//                     CellDef.currency(number: model.amount),
//                   ],
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget? errorBuilder(
//       BuildContext context, ResultError<Map<String, dynamic>> vm) {
//     return ButtonComponent.destructive(
//       icon: Icons.error,
//       text: vm.error.toString(),
//       // onPressed: () => context.push("/form"),
//       onPressed: const GetYamlAction().execute,
//     );
//   }

//   @override
//   Widget? okBuilder(BuildContext context, ResultOk<Map<String, dynamic>> vm) {
//     return Row(
//       spacing: 16,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         ButtonComponent.destructive(
//           icon: Icons.note_add_rounded,
//           text: "Go To Form Page",
//           onPressed: () => context.push("/form"),
//         ),
//         ButtonComponent.primary(
//           icon: Icons.add,
//           text: vm.value.toString().substring(0, 2),
//           onPressed: const GetYamlAction().execute,
//         ),
//         const HomepageCounter(),
//       ],
//     );
//   }

//   @override
//   Result<Map<String, dynamic>> selector(FlutterToolAppState state) =>
//       state.ipState.yaml;
// }

class HomepageCounter extends StateProvider<FlutterToolAppState, int> {
  const HomepageCounter({super.key = const Key("HomepageCounter")});

  @override
  int selector(FlutterToolAppState state) {
    return state.ipState.count;
  }

  @override
  Widget builder(BuildContext context, int vm) {
    return ButtonComponent.primary(
      icon: Icons.add,
      text: vm.toString(),
      onPressed: const IncrementAction().execute,
    );
  }
}

// class Homepage extends StateProvider<Map<String, dynamic>> {
//   const Homepage() : super(key: const Key('Homepage'));

//   @override
//   Result<Map<String, dynamic>> selector(AppState state) {
//     return state.ipState.yaml;
//   }

//   @override
//   Widget? okBuilder(BuildContext context, ResultOk<Map<String, dynamic>> vm) {
//     return Row(
//       spacing: 16,
//       children: [
//         ButtonComponent.primary(
//             icon: Icons.add,
//             text: vm.value.toString().substring(0, 2),
//             onPressed: () {
//               const GetYamlAction().dispatch();
//             }),
//         const HomepageCounter(),
//       ],
//     );
//   }

//   @override
//   Widget? errorBuilder(
//       BuildContext context, ResultError<Map<String, dynamic>> vm) {
//     return Center(child: Text(vm.error.toString()));
//   }
// }

// class HomepageCounter extends StateProvider<int> {
//   const HomepageCounter() : super(key: const Key('HomepageCounter'));

//   @override
//   Result<int> selector(AppState state) {
//     return state.ipState.count;
//   }

//   @override
//   Widget? okBuilder(BuildContext context, ResultOk<int> vm) {
//     return ButtonComponent.primary(
//         icon: Icons.add,
//         text: vm.value.toString(),
//         onPressed: () {
//           const IncrementAction().dispatch();
//         });
//   }

//   @override
//   Widget? errorBuilder(BuildContext context, ResultError<int> vm) {
//     return Center(child: Text(vm.error.toString()));
//   }
// }

// (isFlutterProject(
  // "/Users/shohjahon/Documents/github/personal/myspace/myspace_flutter_tool"));

  // bool isFlutterProject(String folderPath) {
  //   final pubspecFile = File('$folderPath/pubspec.yaml');

  //   if (!pubspecFile.existsSync()) return false;

  //   try {
  //     final pubspecContent = pubspecFile.readAsStringSync();
  //     final yamlMap = loadYaml(pubspecContent);
  //     if (yamlMap is Map && yamlMap['dependencies']?['flutter'] != null) {
  //       final libDir = Directory('$folderPath/lib');
  //       return libDir.existsSync();
  //     }
  //   } catch (e) {
  //     // Handle parsing error or other issues
  //     print('Error reading pubspec.yaml: $e');
  //   }
  //   return false;
  // }
