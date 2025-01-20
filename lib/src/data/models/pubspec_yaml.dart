import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myspace_flutter_tool/src/data/models/pubspec_dependency.dart';

part 'pubspec_yaml.freezed.dart';

@freezed
class PubspecYamlModel with _$PubspecYamlModel {
  const PubspecYamlModel._();

  const factory PubspecYamlModel({
    required String name,
    required String description,
    required String version,
    required String homepage,
    required String dartSdkVersion,
    required List<PubspecDependencyModel> dependencies,
    required List<PubspecDependencyModel> devDependencies,
  }) = _PubspecYamlModel;

  //fromJson
  factory PubspecYamlModel.fromJson(Map<String, dynamic> json) {
    return PubspecYamlModel(
      name: json['name'] as String,
      description: json['description'] as String,
      version: json['version'] as String,
      homepage: json['homepage'] as String,
      dartSdkVersion: json['environment']['sdk'] as String,
      dependencies: [
        for (var dep in json['dependencies'].entries)
          PubspecDependencyModel(
              name: dep.key.toString(), version: dep.value.toString())
      ],
      devDependencies: [
        for (var dep in json['dev_dependencies'].entries)
          PubspecDependencyModel(
              name: dep.key.toString(), version: dep.value.toString())
      ],
    );
  }
}
