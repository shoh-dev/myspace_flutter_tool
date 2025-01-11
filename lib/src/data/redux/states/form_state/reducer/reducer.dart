import 'package:myspace_flutter_tool/src/data/redux/states/form_state/model/model.dart';
import 'package:redux/redux.dart';

class MyFormStateReducer {
  MyFormState _update(MyFormState state, UpdateFormStateAction action) {
    return state.copyWith(
      email: action.email ?? state.email,
      isActive: action.isActive ?? state.isActive,
      name: action.name ?? state.name,
    );
  }

  late Reducer<MyFormState> reducer = combineReducers<MyFormState>([
    TypedReducer<MyFormState, UpdateFormStateAction>(_update).call,
  ]);
}
