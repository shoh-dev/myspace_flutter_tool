import 'dart:io';

import 'package:yaml/yaml.dart';

import 'models/yaml.dart';
import 'yaml.dart';

class YamlRepoLocal implements YamlRepo {
  @override
  YamlModel getPubspecYaml(String path) {
    final pubspecFile = File('$path/pubspec.yaml');

    if (!pubspecFile.existsSync()) {
      throw Exception('pubspec.yaml not found for the given path: $path');
    }

    final pubspecContent = pubspecFile.readAsStringSync();
    final yamlMap = loadYaml(pubspecContent);
    if (yamlMap is Map) {
      return YamlModel.fromJson(yamlMap.cast<String, dynamic>());
    }

    throw Exception('Error parsing pubspec.yaml for the given path: $path');
  }
}
