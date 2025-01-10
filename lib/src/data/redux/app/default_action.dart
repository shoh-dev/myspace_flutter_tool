import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/redux/app/app_store.dart';
import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:redux/redux.dart';

abstract class DefaultAction<T> {
  const DefaultAction();

  Future<Result<T>> payload(AppState state, NextDispatcher next);

  Future<Result<T>> dispatch([bool showLoadingIndicator = false]) async {
    if (showLoadingIndicator) {
      //todo: show loading indicator
    }
    final result = await appStore.dispatch(this);
    if (showLoadingIndicator) {
      //todo: hide loading indicator
    }
    return result;
  }
}
