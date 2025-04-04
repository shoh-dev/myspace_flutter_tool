import 'package:myspace_core/myspace_core.dart';

import 'models/yaml.dart';

export 'yaml_impl.dart';

export 'models/models.dart';

abstract class YamlRepo extends Dependency {
  Result<YamlModel> getPubspecYaml(String path);
}
