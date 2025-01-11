import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myspace_core/myspace_core.dart';
part 'model.freezed.dart';

@Freezed()
class MyFormState with _$MyFormState {
  const MyFormState._();

  const factory MyFormState({
    required String name,
    required String email,
    required bool isActive,
  }) = _FormState;

  //initial factory method
  factory MyFormState.initial() => const MyFormState(
        name: '',
        email: '',
        isActive: false,
      );
}

class UpdateFormStateAction extends UpdateStateReducer<MyFormState> {
  final String? name;
  final String? email;
  final bool? isActive;

  UpdateFormStateAction({this.email, this.isActive, this.name});

  @override
  MyFormState rebuildState(MyFormState oldState) {
    return MyFormState(
      name: name ?? oldState.name,
      email: email ?? oldState.email,
      isActive: isActive ?? oldState.isActive,
    );
  }
}
