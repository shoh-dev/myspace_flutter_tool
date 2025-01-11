import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/reducer/reducer.dart';

class ReduxAppReducer {
  static AppState reduce(AppState state, dynamic action) {
    final ipReducer = IpStateReducer();

    final newState = state.copyWith(
      ipState: ipReducer.reducer(state.ipState, action),
    );

    return newState;
  }
}
