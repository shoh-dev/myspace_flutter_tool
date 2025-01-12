// import 'package:myspace_core/myspace_core.dart';
// import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
// import 'package:myspace_flutter_tool/src/data/redux/states/form_state/actions/change_form_values_action.dart';
// import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/actions/actions.dart';
// import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/actions/get_yaml_action.dart';
// import 'package:redux/redux.dart';

// class StateMiddlewares extends AppMiddleware<FlutterToolAppState> {
//   @override
//   dynamic call(
//       Store<FlutterToolAppState> store, dynamic action, NextDispatcher next) {
//     return switch (action) {
//       (IncrementAction _) => action.payload(store.state, next),
//       (GetYamlAction _) => action.payload(store.state, next),
//       (ChangeFormValuesAction _) => action.payload(store.state, next),
//       _ => next(action),
//     };
//   }
// }
