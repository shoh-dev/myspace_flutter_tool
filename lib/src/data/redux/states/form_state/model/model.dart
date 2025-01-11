import 'package:freezed_annotation/freezed_annotation.dart';
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

class UpdateFormStateAction {
  final String? name;
  final String? email;
  final bool? isActive;

  const UpdateFormStateAction({this.email, this.isActive, this.name});
}
