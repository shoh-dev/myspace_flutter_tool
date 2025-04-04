import 'dart:io';

import 'package:myspace_core/myspace_core.dart';
import 'package:yaml/yaml.dart';

import 'yaml.dart';

class YamlRepoImpl implements YamlRepo {
  @override
  Result<YamlModel> getPubspecYaml(String path) {
    try {
      final pubspecFile = File('$path/pubspec.yaml');

      if (!pubspecFile.existsSync()) {
        return Result.error('pubspec.yaml not found for the given path: $path');
      }

      final pubspecContent = pubspecFile.readAsStringSync();
      final yamlMap = loadYaml(pubspecContent);
      if (yamlMap is Map) {
        return Result.ok(YamlModel.fromJson(yamlMap.cast<String, dynamic>()));
      }
      return Result.error(
          'Error parsing pubspec.yaml for the given path: $path');
    } catch (e, st) {
      return Result.error(e, stackTrace: st);
    }
  }
}
