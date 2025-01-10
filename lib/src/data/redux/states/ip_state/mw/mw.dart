import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/actions/get_yaml_action.dart';
import 'package:redux/redux.dart';

class IpStateMw extends MiddlewareClass<AppState> {
  @override
  dynamic call(Store<AppState> store, dynamic action, NextDispatcher next) {
    return switch (action) {
      (IncrementAction _) => action.payload(store.state, next),
      (GetYamlAction _) => action.payload(store.state, next),
      _ => next(action),
    };
  }
}
