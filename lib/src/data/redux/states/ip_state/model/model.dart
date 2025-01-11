import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myspace_core/myspace_core.dart';
part 'model.freezed.dart';

@Freezed()
class IpState with _$IpState {
  const IpState._();

  const factory IpState({
    required Result<String> ip,
    required int count,
    required Result<Map<String, dynamic>> yaml,
  }) = _IpState;

  //initial factory method
  factory IpState.initial() => IpState(
      ip: const Result.ok(""),
      count: 0,
      yaml: Result.error(ResultException("No yaml data loaded yet")));
}

class UpdateIpStateAction extends UpdateStateReducer<IpState> {
  final Result<String>? ip;
  final int? count;
  final Result<Map<String, dynamic>>? yaml;

  const UpdateIpStateAction({this.ip, this.count, this.yaml});

  @override
  IpState rebuildState(IpState oldState) {
    return oldState.copyWith(
      ip: ip ?? oldState.ip,
      count: count ?? oldState.count,
      yaml: yaml ?? oldState.yaml,
    );
  }
}
