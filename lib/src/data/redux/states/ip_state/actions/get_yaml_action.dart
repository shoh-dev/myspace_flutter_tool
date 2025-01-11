import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/model/model.dart';
import 'package:myspace_flutter_tool/src/data/repositories/yaml/yaml_local.dart';
import 'package:redux/redux.dart';

class GetYamlAction extends AsyncDefaultAction<FlutterToolAppState> {
  const GetYamlAction();

  @override
  Future<Result> payload(FlutterToolAppState state, NextDispatcher next) async {
    await Future.delayed(const Duration(seconds: 2));
    try {
      final resultLoad = YamlRepoLocal().getPubspecYamlMapFromPath(
          "/Users/shohjahon/Documents/github/personal/myspace/myspace_flutter_tool");
      next(UpdateIpStateAction(yaml: resultLoad));
      return resultLoad;
    } catch (e) {
      return Result.error(ResultException(e));
    }
  }
}
