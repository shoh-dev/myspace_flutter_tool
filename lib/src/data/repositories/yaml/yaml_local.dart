import 'dart:io';

import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/models/pubspec_yaml.dart';
import 'package:yaml/yaml.dart';

import 'yaml.dart';

class YamlRepoLocal implements YamlRepo {
  @override
  Result<PubspecYamlModel> getPubspecYaml(String path) {
    final pubspecFile = File('$path/pubspec.yaml');

    if (!pubspecFile.existsSync()) {
      return Result.error(ResultException(
          'Error parsing pubspec.yaml for the given path: $path'));
    }

    final pubspecContent = pubspecFile.readAsStringSync();
    final yamlMap = loadYaml(pubspecContent);
    if (yamlMap is Map) {
      return Result.ok(
          PubspecYamlModel.fromJson(yamlMap.cast<String, dynamic>()));
    }

    return Result.error(ResultException(
        'Error parsing pubspec.yaml for the given path: $path'));
  }
}
