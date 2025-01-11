import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/model/model.dart';
import 'package:redux/redux.dart';

class IncrementAction extends SyncDefaultAction<FlutterToolAppState> {
  const IncrementAction();

  @override
  Result payload(FlutterToolAppState state, NextDispatcher next) {
    next(UpdateIpStateAction(count: state.ipState.count + 1));
    return const Result.ok(null);
  }
}
