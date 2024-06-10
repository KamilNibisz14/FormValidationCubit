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
        final parserValue = formEntity.parser!(value); 
        if (parserValue == null) {
          _validateSingleFormEntity(formEntity, formKey, value);
        } else {
          _validateSingleFormEntityWithUpdate(formEntity, formKey, parserValue);
        }
      } else {
        _validateSingleFormEntityWithUpdate(formEntity, formKey, value);
      }
    }
  }

  void onFocusedChanged(dynamic value, String formKey) {
    var formEntity = state.form[formKey];
    if(formEntity != null){
      _validateSingleFormEntity(formEntity,formKey,value);
    }
  }

    void clearIsValidationErrorOnSave() {
    final Map<String, FormEntity<dynamic>> updatedForm = {};
    state.form.forEach((key, formEntity) {
      final newFormEntity = formEntity.copyWith(isValidationErrorOnSave: false);
      updatedForm[key] = newFormEntity;
    });
    emit(state.copyWith(form: updatedForm));
  }

  void onSave(Function onSuccess) {
    var newState = _validateAllForm();

    if (newState.isFormValid) {
      onSuccess();
      final user = UserEntity.fromMap(state.form);
      print(user);
      emit(newState);
    } else {
      emit(newState);
    }
  }

    UserFormState _validateAllForm() {
    final Map<String, FormEntity<dynamic>> updatedForm = {};
    state.form.forEach((key, formEntity) {
      final errorMessage = formEntity.validation(formEntity.value.toString());
      final isValidationErrorOnSave = errorMessage != null;
      final newFormEntity = formEntity.copyWith(errorMessage: errorMessage,isValidationErrorOnSave: isValidationErrorOnSave);
      updatedForm[key] = newFormEntity;
    });
    return state.copyWith(form: updatedForm);
  }

  void _validateSingleFormEntity(
      FormEntity<dynamic> formEntity, String formKey, dynamic value) {
    final newFormEntity =
        formEntity.copyWith(errorMessage: formEntity.validation(value));
    final updatedForm = Map<String, FormEntity<dynamic>>.from(state.form)
      ..[formKey] = newFormEntity;
    final newState = state.copyWith(form: updatedForm);
    emit(newState);
  }

  void _validateSingleFormEntityWithUpdate(
      FormEntity<dynamic> formEntity, String formKey, dynamic value) {
    final errorMessage = formEntity.validation(value);
    final newFormEntity =
        formEntity.copyWith(errorMessage: errorMessage, value: value);
    final updatedForm = Map<String, FormEntity<dynamic>>.from(state.form)
      ..[formKey] = newFormEntity;
    final newState = state.copyWith(form: updatedForm);
    emit(newState);
  }
}
