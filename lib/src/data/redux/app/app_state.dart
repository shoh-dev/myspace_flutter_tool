import 'package:myspace_flutter_tool/src/data/redux/states/ip_state/model/model.dart';

import '../states/form_state/model/model.dart';

class FlutterToolAppState {
  final IpState ipState;
  final MyFormState myFormState;

  const FlutterToolAppState({
    required this.ipState,
    required this.myFormState,
  });

  factory FlutterToolAppState.initial() => FlutterToolAppState(
        ipState: IpState.initial(),
        myFormState: MyFormState.initial(),
      );

  FlutterToolAppState copyWith({
    IpState? ipState,
    MyFormState? myFormState,
  }) {
    return FlutterToolAppState(
      ipState: ipState ?? this.ipState,
      myFormState: myFormState ?? this.myFormState,
    );
  }
}
