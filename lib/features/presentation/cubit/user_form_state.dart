part of 'user_form_cubit.dart';

@freezed
class UserFormState with _$UserFormState {
  const factory UserFormState.content({
    @Default(FormEntity(value: '')) FormEntity<String> email,
    @Default(FormEntity(value: '')) FormEntity<String> password,
    @Default(FormEntity(value: 0)) FormEntity<int> age,
  }) = _Content;
}

extension UserFormtateFormValid on UserFormState {
  bool get isFormValid {
    return email.errorMessage == null &&
        password.errorMessage == null &&
        age.errorMessage == null;
  }
}
