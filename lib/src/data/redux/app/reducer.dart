import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/form_state/model/model.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/model/model.dart';
import 'package:redux/redux.dart';

class ReduxAppReducer extends AppReducer<FlutterToolAppState> {
  @override
  FlutterToolAppState reducer(
      FlutterToolAppState state, UpdateStateReducer action) {
    final newState = state.copyWith(
      ipState: TypedReducer<IpState, UpdateIpStateAction>(
              (state, action) => action.rebuildState(state))
          .call(state.ipState, action),
      myFormState: TypedReducer<MyFormState, UpdateFormStateAction>(
              (state, action) => action.rebuildState(state))
          .call(state.myFormState, action),
    );

    return newState;
  }
}
