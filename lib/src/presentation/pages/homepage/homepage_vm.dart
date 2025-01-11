import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/actions/get_yaml_action.dart';

class HomepageVm {
  HomepageVm() {
    loadYaml = Command0<Map<String, dynamic>>(_loadYaml);
  }

  late Command<Map<String, dynamic>> loadYaml;

  final getYamlAction = const GetYamlAction();

  Future<Result<Map<String, dynamic>>> _loadYaml() {
    return getYamlAction.execute();
  }
}
