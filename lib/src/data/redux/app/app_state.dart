import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/model/model.dart';

part 'app_state.freezed.dart';

@Freezed()
class AppState with _$AppState {
  const AppState._();

  const factory AppState({
    required IpState ipState,
  }) = _AppState;

  factory AppState.initial() => AppState(
        ipState: IpState.initial(),
      );
}
