import 'package:myspace_flutter_tool/src/data/redux/states/pubspec_yaml/model/model.dart';

import '../states/form_state/model/model.dart';

class FlutterToolAppState {
  final MyFormState myFormState;

  final PubspecYamlState pubspecYamlState;

  const FlutterToolAppState({
    required this.myFormState,
    required this.pubspecYamlState,
  });

  factory FlutterToolAppState.initial() => FlutterToolAppState(
        myFormState: MyFormState.initial(),
        pubspecYamlState: PubspecYamlState.initial(),
      );

  FlutterToolAppState copyWith({
    MyFormState? myFormState,
    PubspecYamlState? pubspecYamlState,
  }) {
    return FlutterToolAppState(
      myFormState: myFormState ?? this.myFormState,
      pubspecYamlState: pubspecYamlState ?? this.pubspecYamlState,
    );
  }
}
