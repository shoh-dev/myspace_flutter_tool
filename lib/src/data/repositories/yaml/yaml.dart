import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:myspace_core/myspace_core.dart';

abstract class YamlRepo {
  Result<Map<String, dynamic>> getPubspecYamlMapFromPath(String path);
}
