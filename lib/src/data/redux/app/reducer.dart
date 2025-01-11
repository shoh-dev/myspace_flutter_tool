import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/form_state/reducer/reducer.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/reducer/reducer.dart';

class ReduxAppReducer {
  static AppState reduce(AppState state, dynamic action) {
    final ipReducer = IpStateReducer();
    final myFormReducer = MyFormStateReducer();

    final newState = state.copyWith(
      ipState: ipReducer.reducer(state.ipState, action),
      myFormState: myFormReducer.reducer(state.myFormState, action),
    );

    return newState;
  }
}
