import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/actions/get_yaml_action.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StateProvider<Map<String, dynamic>>(
        key: const Key('Homepage'),
        selector: (state) => state.ipState.yaml,
        retryAction: const GetYamlAction().dispatch,
        okBuilder: (context, vm) {
          return Center(
            child: Row(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonComponent.primary(
                    icon: Icons.add,
                    text: vm.value.toString().substring(0, 2),
                    onPressed: () {
                      const GetYamlAction().dispatch();
                    }),
                const HomepageCounter(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class HomepageCounter extends StatelessWidget {
  const HomepageCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return StateProvider<int>(
      key: const Key('HomepageCounter'),
      selector: (state) => state.ipState.count,
      okBuilder: (context, vm) {
        return ButtonComponent.primary(
            icon: Icons.add,
            text: vm.value.toString(),
            onPressed: () {
              const IncrementAction().dispatch();
            });
      },
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
