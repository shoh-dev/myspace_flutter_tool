import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/redux/app/default_action.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:redux/redux.dart';

class IncrementAction extends DefaultAction<void> {
  const IncrementAction();

  @override
  Future<Result<void>> payload(AppState state, NextDispatcher next) async {
    next(UpdateIpStateAction(
        count: Result.ok((state.ipState.count as ResultOk<int>).value)));
    return const Result.ok(null);
  }
}
