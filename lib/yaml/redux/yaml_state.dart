import 'package:equatable/equatable.dart';
import 'package:myspace_core/myspace_core.dart';
import 'package:repositories/yaml/yaml.dart';

sealed class YamlStateStatus extends Equatable {
  const YamlStateStatus();
}

class Initial extends YamlStateStatus {
  const Initial();

  @override
  List<Object?> get props => [];
}

class Loading extends YamlStateStatus {
  const Loading();

  @override
  List<Object?> get props => [];
}

class Loaded extends YamlStateStatus {
  const Loaded();

  @override
  List<Object?> get props => [];
}

class Error extends YamlStateStatus {
  final String message;

  const Error(this.message);

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return message;
  }
}

// enum YamlStateStatus {
//   initial,
//   loading,
//   loaded,
//   error,
// }

extension YamlStateStatusX on YamlStateStatus {
  bool get isInitial => this is Initial;
  bool get isLoading => this is Loading;
  bool get isLoaded => this is Loaded;
  bool get isError => this is Error;
}

class YamlState extends Equatable {
  final YamlStateStatus status;
  final String name;
  final String description;
  final String version;
  final String homepage;
  final String dartSdkVersion;
  final List<YamlDependencyModel> dependencies;
  final List<YamlDependencyModel> devDependencies;

  const YamlState({
    required this.status,
    required this.dartSdkVersion,
    required this.dependencies,
    required this.description,
    required this.devDependencies,
    required this.homepage,
    required this.name,
    required this.version,
  });

  //initial factory method
  factory YamlState.initial() => const YamlState(
        status: Initial(),
        name: '',
        description: '',
        version: '',
        homepage: '',
        dartSdkVersion: '',
        dependencies: [],
        devDependencies: [],
      );

  YamlState copyWith({
    YamlStateStatus? status,
    String? name,
    String? description,
    String? version,
    String? homepage,
    String? dartSdkVersion,
    List<YamlDependencyModel>? dependencies,
    List<YamlDependencyModel>? devDependencies,
  }) {
    return YamlState(
      status: status ?? this.status,
      name: name ?? this.name,
      description: description ?? this.description,
      version: version ?? this.version,
      homepage: homepage ?? this.homepage,
      dartSdkVersion: dartSdkVersion ?? this.dartSdkVersion,
      dependencies: dependencies ?? this.dependencies,
      devDependencies: devDependencies ?? this.devDependencies,
    );
  }

  @override
  List<Object?> get props => [
        status,
        name,
        description,
        version,
        homepage,
        dartSdkVersion,
        dependencies,
        devDependencies,
      ];
}

class UpdateYamlStateAction extends UpdateStateReducer<YamlState> {
  final YamlStateStatus? status;
  final String? name;
  final String? description;
  final String? version;
  final String? homepage;
  final String? dartSdkVersion;
  final List<YamlDependencyModel>? dependencies;
  final List<YamlDependencyModel>? devDependencies;

  const UpdateYamlStateAction({
    this.status,
    this.dartSdkVersion,
    this.dependencies,
    this.description,
    this.devDependencies,
    this.homepage,
    this.name,
    this.version,
  });

  @override
  YamlState rebuildState(YamlState oldState) {
    return oldState.copyWith(
      status: status,
      name: name,
      description: description,
      version: version,
      homepage: homepage,
      dartSdkVersion: dartSdkVersion,
      dependencies: dependencies,
      devDependencies: devDependencies,
    );
  }
}
