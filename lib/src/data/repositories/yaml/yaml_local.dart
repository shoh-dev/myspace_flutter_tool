import 'dart:io';

import 'package:myspace_core/myspace_core.dart';
import 'package:yaml/yaml.dart';

import 'yaml.dart';

class YamlRepoLocal implements YamlRepo {
  @override
  Result<Map<String, dynamic>> getPubspecYamlMapFromPath(String path) {
    final pubspecFile = File('$path/pubspec.yaml');

    if (!pubspecFile.existsSync()) {
      return Result.error(ResultException(
          'Error parsing pubspec.yaml for the given path: $path'));
    }

    final pubspecContent = pubspecFile.readAsStringSync();
    final yamlMap = loadYaml(pubspecContent);
    if (yamlMap is Map) {
      return Result.ok(yamlMap.cast<String, dynamic>());
    }

    return Result.error(ResultException(
        'Error parsing pubspec.yaml for the given path: $path'));
  }
}
