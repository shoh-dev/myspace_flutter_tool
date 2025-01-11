import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/redux/app/default_action.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/model/model.dart';
import 'package:redux/redux.dart';

class IncrementAction extends DefaultAction<void> {
  const IncrementAction();

  @override
  Future<Result<void>> payload(AppState state, NextDispatcher next) async {
    next(UpdateIpStateAction(count: state.ipState.count + 1));
    return const Result.ok(null);
  }
}
