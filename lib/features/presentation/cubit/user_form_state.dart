part of 'user_form_cubit.dart';

@freezed
class UserFormState with _$UserFormState {
  const factory UserFormState.content({
    @Default(UserFormMap.userFormEntity) Map<String, FormEntity> form,
  }) = _Content;
}
extension UserFormStateFormValid on UserFormState {
  bool get isFormValid {
    return form.values.every((formEntity) => formEntity.errorMessage == null);
  }
}
