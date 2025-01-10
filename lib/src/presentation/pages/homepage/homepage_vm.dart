// import 'package:fast_immutable_collections/fast_immutable_collections.dart';
// import 'package:flutter/material.dart';
// import 'package:myspace_core/myspace_core.dart';
// import 'package:myspace_flutter_tool/src/data/repositories/yaml/yaml.dart';

// class HomepageVm extends ChangeNotifier {
//   final YamlRepo _yamlRepo;

//   HomepageVm({
//     required YamlRepo yamlRepo,
//   }) : _yamlRepo = yamlRepo {
//     loadYaml = Command1(_loadYaml)
//       ..execute(
//           "/Users/shohjahon/Documents/github/personal/myspace/myspace_flutter_tool");
//   }

//   Map<String, dynamic> _yaml = const Map.empty();

//   Map<String, dynamic> get yaml => _yaml;

//   late Command1<void, String> loadYaml;

//   Future<Result<void>> _loadYaml(String path) {
//     try {
//       final resultLoad = _yamlRepo.getPubspecYamlMapFromPath(path);
//       switch (resultLoad) {
//         case ResultOk<Map<String, dynamic>>():
//           _yaml = resultLoad.value;
//         case ResultError<void>():
//           break;
//       }

//       return Future.delayed(const Duration(seconds: 2), () => resultLoad);
//     } finally {
//       notifyListeners();
//     }
//   }
// }
