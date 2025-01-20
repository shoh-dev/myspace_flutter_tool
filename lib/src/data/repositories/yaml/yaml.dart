import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/models/pubspec_yaml.dart';

abstract class YamlRepo {
  Result<PubspecYamlModel> getPubspecYaml(String path);
}
