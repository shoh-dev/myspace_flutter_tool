import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/models/pubspec_yaml.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/pubspec_yaml/model/model.dart';
import 'package:myspace_flutter_tool/src/data/repositories/yaml/yaml.dart';
import 'package:redux/redux.dart';

class GetPubspecYamlAction
    extends AsyncDefaultAction<FlutterToolAppState, PubspecYamlModel> {
  const GetPubspecYamlAction();

  @override
  Future<Result<PubspecYamlModel>> payload(
      FlutterToolAppState state, NextDispatcher next) async {
    try {
      final resultLoad = getDependency<YamlRepo>().getPubspecYaml(
          "/Users/shohjahon/Documents/github/personal/myspace/myspace_flutter_tool");
      next(UpdatePubspecYamlStateAction(pubspecYaml: resultLoad));
      return resultLoad;
    } catch (e) {
      next(UpdatePubspecYamlStateAction(
          pubspecYaml: Result.error(ResultException(e))));
      return Result.error(ResultException(e));
    }
  }
}
