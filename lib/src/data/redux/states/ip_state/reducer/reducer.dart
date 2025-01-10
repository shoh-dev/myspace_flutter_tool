import 'package:myspace_flutter_tool/src/data/redux/redux.dart';
import 'package:redux/redux.dart';

class IpStateReducer {
  IpState _update(IpState state, UpdateIpStateAction action) {
    return state.copyWith(
      ip: action.ip ?? state.ip,
      count: action.count ?? state.count,
      yaml: action.yaml ?? state.yaml,
    );
  }

  late Reducer<IpState> reducer = combineReducers<IpState>([
    TypedReducer<IpState, UpdateIpStateAction>(_update).call,
  ]);
}
