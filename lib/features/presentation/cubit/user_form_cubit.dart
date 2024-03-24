import 'package:bloc/bloc.dart';
import 'package:form_with_cubit/features/core/entities/form_entity.dart';
import 'package:form_with_cubit/features/core/validators/user_form_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_form_state.dart';
part 'user_form_cubit.freezed.dart';

class UserFormCubit extends Cubit<UserFormState> with UserFormValidator {
  UserFormCubit() : super(const UserFormState.content());

  void updateEmail(String email) {
    final newEmail = state.email.copyWith(value: email);
    final newState = state.copyWith(email: newEmail);
    emit(newState);
  }

  void updatePassword(String password) {
    final newPassword = state.password.copyWith(value: password);
    final newState = state.copyWith(password: newPassword);
    emit(newState);
  }

  void updateAge(String age) {
    final newAge = state.age.copyWith(value: int.tryParse(age) ?? 0);
    final newState = state.copyWith(age: newAge);
    emit(newState);
  }

  void onSave(Function onSuccess) {
    var newState = validateForm();

    if (newState.isFormValid) {
      onSuccess();
    } else {
      emit(newState);
    }
  }

  UserFormState validateForm() {
    return state.copyWith(
      email: state.email.copyWith(
        errorMessage: validateEmail(state.email.value),
      ),
      password: state.password.copyWith(
        errorMessage: validatePassword(state.password.value),
      ),
      age: state.age.copyWith(
        errorMessage: validateAge(state.age.value.toString()),
      ),
    );
  }
}
