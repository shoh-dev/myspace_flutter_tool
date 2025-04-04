// import 'package:myspace_core/myspace_core.dart';
// import 'package:myspace_flutter_tool/app/redux/app_state.dart';
// import 'package:myspace_flutter_tool/yaml/yaml.dart';

// import 'package:redux/redux.dart';

// class ReduxAppReducer extends ReducerCore<AppState> {
//   @override
//   AppState reducer(AppState state, UpdateStateReducer action) {
//     final newState = state.copyWith(
//       yamlState: TypedReducer<YamlState, UpdateYamlStateAction>(
//               (state, action) => action.rebuildState(state))
//           .call(state.yamlState, action),
//     );

//     return newState;
//   }
// }
