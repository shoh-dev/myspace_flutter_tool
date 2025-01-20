import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/form_state/model/model.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/pubspec_yaml/model/model.dart';

import 'package:redux/redux.dart';

class ReduxAppReducer extends AppReducer<FlutterToolAppState> {
  @override
  FlutterToolAppState reducer(
      FlutterToolAppState state, UpdateStateReducer action) {
    final newState = state.copyWith(
      myFormState: TypedReducer<MyFormState, UpdateFormStateAction>(
              (state, action) => action.rebuildState(state))
          .call(state.myFormState, action),
      pubspecYamlState:
          TypedReducer<PubspecYamlState, UpdatePubspecYamlStateAction>(
                  (state, action) => action.rebuildState(state))
              .call(state.pubspecYamlState, action),
    );

    return newState;
  }
}
