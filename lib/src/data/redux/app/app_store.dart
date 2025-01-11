import 'package:myspace_flutter_tool/src/data/redux/app/reducer.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:redux/redux.dart';

import 'state_middlewares.dart';

final appStore = Store<AppState>(
  ReduxAppReducer.reduce,
  initialState: AppState.initial(),
  distinct: true,
  middleware: [
    StateMiddlewares().call,
  ],
);
