// import 'package:myspace_core/myspace_core.dart';
// import 'package:repositories/yaml/yaml.dart';

// class YamlState extends ReduxState {
//   final String name;
//   final String description;
//   final String version;
//   final String homepage;
//   final String dartSdkVersion;
//   final List<YamlDependencyModel> dependencies;
//   final List<YamlDependencyModel> devDependencies;

//   const YamlState({
//     required super.status,
//     required this.dartSdkVersion,
//     required this.dependencies,
//     required this.description,
//     required this.devDependencies,
//     required this.homepage,
//     required this.name,
//     required this.version,
//   });

//   //initial factory method
//   factory YamlState.initial() => const YamlState(
//         status: StateInitial(),
//         name: '',
//         description: '',
//         version: '',
//         homepage: '',
//         dartSdkVersion: '',
//         dependencies: [],
//         devDependencies: [],
//       );

//   @override
//   YamlState copyWith({
//     ReduxStateStatus? status,
//     String? name,
//     String? description,
//     String? version,
//     String? homepage,
//     String? dartSdkVersion,
//     List<YamlDependencyModel>? dependencies,
//     List<YamlDependencyModel>? devDependencies,
//   }) {
//     return YamlState(
//       status: status ?? this.status,
//       name: name ?? this.name,
//       description: description ?? this.description,
//       version: version ?? this.version,
//       homepage: homepage ?? this.homepage,
//       dartSdkVersion: dartSdkVersion ?? this.dartSdkVersion,
//       dependencies: dependencies ?? this.dependencies,
//       devDependencies: devDependencies ?? this.devDependencies,
//     );
//   }

//   @override
//   List<Object?> get props => [
//         status,
//         name,
//         description,
//         version,
//         homepage,
//         dartSdkVersion,
//         dependencies,
//         devDependencies,
//       ];
// }

// class UpdateYamlStateAction extends UpdateStateReducer<YamlState> {
//   final ReduxStateStatus? status;
//   final String? name;
//   final String? description;
//   final String? version;
//   final String? homepage;
//   final String? dartSdkVersion;
//   final List<YamlDependencyModel>? dependencies;
//   final List<YamlDependencyModel>? devDependencies;

//   const UpdateYamlStateAction({
//     this.status,
//     this.dartSdkVersion,
//     this.dependencies,
//     this.description,
//     this.devDependencies,
//     this.homepage,
//     this.name,
//     this.version,
//   });

//   @override
//   YamlState rebuildState(YamlState oldState) {
//     return oldState.copyWith(
//       status: status,
//       name: name,
//       description: description,
//       version: version,
//       homepage: homepage,
//       dartSdkVersion: dartSdkVersion,
//       dependencies: dependencies,
//       devDependencies: devDependencies,
//     );
//   }
// }
