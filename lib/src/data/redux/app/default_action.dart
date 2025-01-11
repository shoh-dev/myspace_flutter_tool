import 'dart:developer';

import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/redux/app/app_store.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:redux/redux.dart';

Map<Type, DefaultAction> _runningActions = {};

abstract class DefaultAction<T> {
  const DefaultAction();

  //Call this method in redux middleware
  bool get isRunning => _runningActions.containsKey(runtimeType);

  //Call this method in redux middleware
  Future<Result<T>> payload(AppState state, NextDispatcher next);

  //Call this method from UI
  Future<Result<T>> execute([bool showLoadingIndicator = false]) async {
    if (_runningActions.containsKey(runtimeType)) {
      log('Action is already running');
      return Result.error(ResultException('Action is already running'));
    }

    _runningActions[runtimeType] = this;
    log('Action is running now');
    if (showLoadingIndicator) {
      //todo: show loading indicator
    }
    final result = await appStore.dispatch(this);
    if (showLoadingIndicator) {
      //todo: hide loading indicator
    }
    _runningActions.remove(runtimeType);
    log('Action is finished');
    return result;
  }
}
