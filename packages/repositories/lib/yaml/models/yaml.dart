import 'package:equatable/equatable.dart';

import 'yaml_dependency.dart';

class YamlModel extends Equatable {
  final String name;
  final String description;
  final String version;
  final String homepage;
  final String dartSdkVersion;
  final List<YamlDependencyModel> dependencies;
  final List<YamlDependencyModel> devDependencies;

  const YamlModel({
    required this.name,
    required this.description,
    required this.version,
    required this.homepage,
    required this.dartSdkVersion,
    required this.dependencies,
    required this.devDependencies,
  });

  //fromJson
  factory YamlModel.fromJson(Map<String, dynamic> json) {
    return YamlModel(
      name: json['name'] as String,
      description: json['description'] as String,
      version: json['version'] as String,
      homepage: json['homepage'] as String,
      dartSdkVersion: json['environment']['sdk'] as String,
      dependencies: [
        for (var dep in json['dependencies'].entries)
          YamlDependencyModel(
              name: dep.key.toString(), version: dep.value.toString())
      ],
      devDependencies: [
        for (var dep in json['dev_dependencies'].entries)
          YamlDependencyModel(
              name: dep.key.toString(), version: dep.value.toString())
      ],
    );
  }

  @override
  List<Object?> get props => [
        name,
        description,
        version,
        homepage,
        dartSdkVersion,
        dependencies,
        devDependencies,
      ];
}
