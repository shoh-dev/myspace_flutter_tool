import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/redux/app/app_state.dart';
import 'package:myspace_flutter_tool/src/data/redux/app/default_action.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/form_state/model/model.dart';
import 'package:redux/redux.dart';

class ChangeFormValuesAction extends SyncDefaultAction<void> {
  final String? name;
  final String? email;
  final bool? isActive;

  const ChangeFormValuesAction({this.name, this.email, this.isActive});

  @override
  Result<void> payload(AppState state, NextDispatcher next) {
    next(UpdateFormStateAction(name: name, email: email, isActive: isActive));
    return const Result.ok(null);
  }
}
