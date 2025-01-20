import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myspace_core/myspace_core.dart';
import 'package:myspace_flutter_tool/src/data/models/pubspec_yaml.dart';
part 'model.freezed.dart';

@Freezed()
class PubspecYamlState with _$PubspecYamlState {
  const PubspecYamlState._();

  const factory PubspecYamlState({
    required Result<PubspecYamlModel> pubspecYaml,
  }) = _PubspecYamlState;

  //initial factory method
  factory PubspecYamlState.initial() => PubspecYamlState(
        pubspecYaml: Result.error(ResultException('pubspec.yaml not loaded!')),
      );
}

class UpdatePubspecYamlStateAction
    extends UpdateStateReducer<PubspecYamlState> {
  final Result<PubspecYamlModel>? pubspecYaml;

  const UpdatePubspecYamlStateAction({
    this.pubspecYaml,
  });

  @override
  PubspecYamlState rebuildState(PubspecYamlState oldState) {
    return oldState.copyWith(
      pubspecYaml: pubspecYaml ?? oldState.pubspecYaml,
    );
  }
}
