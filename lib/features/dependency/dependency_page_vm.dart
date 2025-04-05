import 'package:myspace_core/myspace_core.dart';
import 'package:repositories/yaml/yaml.dart';

class DependencyPageVm extends Vm {
  final YamlRepo _yamlRepo;

  DependencyPageVm(YamlRepo yamlRepo) : _yamlRepo = yamlRepo {
    loadYaml = CommandNoParam(_loadPubspecYaml)..execute();
  }

  late CommandNoParam<void> loadYaml;

  YamlModel? yamlModel;

  Future<Result<void>> _loadPubspecYaml() async {
    const path =
        "/Users/shoh/Documents/github/personal/myspace/apps/myspace_flutter_tool";
    final yaml = _yamlRepo.getPubspecYaml(path);
    switch (yaml) {
      case ResultOk<YamlModel>():
        log.fine("Loaded Yaml");
        yamlModel = yaml.value;
        notifyListeners();
        return const Result.ok(null);
      case ResultError<YamlModel>():
        log.warning('Load Yaml error: ${yaml.e}');
        notifyListeners();
        return Result.error(yaml.e);
    }
  }
}
