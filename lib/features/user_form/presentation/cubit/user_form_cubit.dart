import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:form_with_cubit/core/entities/form_entity.dart';
import 'package:form_with_cubit/features/user_form/domain/entity/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_form_state.dart';
part 'user_form_cubit.freezed.dart';

class UserFormCubit extends Cubit<UserFormState> {
  UserFormCubit() : super(const UserFormState.content());

  void init(){
    final user = UserEntity.createNew();
    emit(UserFormState.content(form: UserEntity.createUserFormMapFromUserEntity(user)));
  }

  void updateField(dynamic value, String formKey) {
    var formEntity = state.form[formKey];
    if (formEntity != null) {
      if (formEntity.parser != null) {
        final parserValue = formEntity.parser!(value); // check if value id valid in parser 
        if (parserValue == null) {
          validateSingleFormEntity(formEntity, formKey, value); // validate sindle form 
        } else {
          updateFormEntity(formEntity, formKey, parserValue); 
        }
      } else {
        updateFormEntity(formEntity, formKey, value);
      }
    }
  }

  // update single form entity
  void updateFormEntity(
      FormEntity<dynamic> formEntity, String formKey, dynamic value) {
    final newFormEntity = formEntity.copyWith(value: value, errorMessage: null);
    final updatedForm = Map<String, FormEntity<dynamic>>.from(state.form)
      ..[formKey] = newFormEntity;
    final newState = state.copyWith(form: updatedForm);
    emit(newState);
  }

  // validate single form entity with key 
  void validateSingleFormEntity(
      FormEntity<dynamic> formEntity, String formKey, dynamic value) {
    final newFormEntity =
        formEntity.copyWith(errorMessage: formEntity.validation(value));
    final updatedForm = Map<String, FormEntity<dynamic>>.from(state.form)
      ..[formKey] = newFormEntity;
    final newState = state.copyWith(form: updatedForm);
    emit(newState);
  }

  // validate all forms entities
  UserFormState validateForm() {
    final Map<String, FormEntity<dynamic>> updatedForm = {};
    state.form.forEach((key, formEntity) {
      final errorMessage = formEntity.validation(formEntity.value.toString());
      final newFormEntity = formEntity.copyWith(errorMessage: errorMessage);
      updatedForm[key] = newFormEntity;
    });
    return state.copyWith(form: updatedForm);
  }

  void onSave(Function onSuccess) {
    var newState = validateForm();

    if (newState.isFormValid) {
      onSuccess();
      final user = UserEntity.fromMap(state.form);
      print(user);
    } else {
      emit(newState);
    }
  }
}
