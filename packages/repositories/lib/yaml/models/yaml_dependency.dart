import 'package:equatable/equatable.dart';

class YamlDependencyModel extends Equatable {
  final String name;
  final String version;

  const YamlDependencyModel({
    required this.name,
    required this.version,
  });

  bool get isFlutter => name == "flutter";
  bool get isFlutterTest => name == "flutter_test";

  @override
  List<Object?> get props => [name, version];
}
