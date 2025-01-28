import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/app/redux/app_state.dart';
import 'package:myspace_flutter_tool/yaml/yaml.dart';
import 'package:redux/redux.dart';
import 'package:repositories/yaml/yaml.dart';

class GetYamlAction extends AsyncDefaultAction<AppState, YamlModel> {
  const GetYamlAction();

  @override
  Future<Result<YamlModel>> payload(AppState state, NextDispatcher next) async {
    try {
      next(const UpdateYamlStateAction(status: Loading()));

      await Future.delayed(const Duration(seconds: 2));

      final resultLoad = getDependency<YamlRepo>().getPubspecYaml(
          "/Users/shoh/Documents/github/perso1nal/myspace/myspace_flutter_tool");

      final yaml = resultLoad;
      next(UpdateYamlStateAction(
        status: const Loaded(),
        dartSdkVersion: yaml.dartSdkVersion,
        dependencies: yaml.dependencies,
        description: yaml.description,
        devDependencies: yaml.devDependencies,
        homepage: yaml.homepage,
        name: yaml.name,
        version: yaml.version,
      ));

      return Result.ok(yaml);
    } catch (e) {
      next(UpdateYamlStateAction(status: Error(e.toString())));
      return Result.error(ResultException(e));
    }
  }
}
