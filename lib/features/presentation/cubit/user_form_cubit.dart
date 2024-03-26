import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:form_with_cubit/features/core/entities/form_entity.dart';
import 'package:form_with_cubit/features/core/forms_map/user_form_map.dart';
import 'package:form_with_cubit/features/core/utils/cast_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_form_state.dart';
part 'user_form_cubit.freezed.dart';

class UserFormCubit extends Cubit<UserFormState>{
  UserFormCubit() : super(const UserFormState.content());

void updateField(String value, String formKey) {
  var formEntity = state.form[formKey];
  if (formEntity != null) {
    final castedValue = CastValue.castValue(formEntity.value.runtimeType, value);
    final newFormEntity = formEntity.copyWith(value: castedValue);
    final updatedForm = Map<String, FormEntity<dynamic>>.from(state.form)
      ..[formKey] = newFormEntity;
    final  newState = state.copyWith(form: updatedForm);
    emit(newState);
  }
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
  final Map<String, FormEntity<dynamic>> updatedForm = {};
  state.form.forEach((key, formEntity) {
    final errorMessage = formEntity.validation(formEntity.value.toString());
    final newFormEntity = formEntity.copyWith(errorMessage: errorMessage);
    updatedForm[key] = newFormEntity;
  });
  return state.copyWith(form: updatedForm);
}
}
