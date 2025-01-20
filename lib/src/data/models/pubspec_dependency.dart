import 'package:freezed_annotation/freezed_annotation.dart';

part 'pubspec_dependency.freezed.dart';

@freezed
class PubspecDependencyModel with _$PubspecDependencyModel {
  const PubspecDependencyModel._();

  const factory PubspecDependencyModel({
    required String name,
    required String version,
  }) = _PubspecDependencyModel;

  bool get isFlutter => name == "flutter";
  bool get isFlutterTest => name == "flutter_test";
}
