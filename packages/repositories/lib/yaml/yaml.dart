import 'models/yaml.dart';

export 'yaml_local.dart';

export 'models/models.dart';

abstract class YamlRepo {
  YamlModel getPubspecYaml(String path);
}
