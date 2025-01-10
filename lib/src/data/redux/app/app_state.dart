import 'package:freezed_annotation/freezed_annotation.dart';

import '../states.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required IpState ipState,
  }) = _AppState;

  factory AppState.initial() => AppState(ipState: IpState.initial());
}
