import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_with_cubit/core/constant/common_form_map_key.dart';
import 'package:form_with_cubit/core/entities/form_entity.dart';
import 'package:form_with_cubit/core/forms_map/user_form_map.dart';
import 'package:form_with_cubit/core/validators/common_validator_error_messages.dart';
import 'package:form_with_cubit/features/user_form/domain/entity/gender_enum.dart';
import 'package:form_with_cubit/features/user_form/presentation/cubit/user_form_cubit.dart';

const emailKey = CommonFormMapKey.email;
const passwordKey = CommonFormMapKey.password;
const ageKey = CommonFormMapKey.age;
const agreementKey = CommonFormMapKey.agreement;
const genderKey = CommonFormMapKey.gender;

Map<String, FormEntity<dynamic>> updateFormEntityValue(
    String formKey, dynamic value) {
  final newFormEntity =
      UserFormMap.userFormMap[formKey]!.copyWith(value: value);
  final updatedForm =
      Map<String, FormEntity<dynamic>>.from(UserFormMap.userFormMap)
        ..[formKey] = newFormEntity;
  return updatedForm;
}

Map<String, FormEntity<dynamic>> updateFormEntityError(
    String formKey, String error, String value) {
  final newFormEntity = UserFormMap.userFormMap[formKey]!.copyWith(
      errorMessage: UserFormMap.userFormMap[formKey]!.validation(value));
  final updatedForm =
      Map<String, FormEntity<dynamic>>.from(UserFormMap.userFormMap)
        ..[formKey] = newFormEntity;
  return updatedForm;
}


void main() {
  final formMap = UserFormMap.userFormMap;

  group('UserFormCubit Edit Age (int)', () {
    blocTest<UserFormCubit, UserFormState>(
      'Edit Age - 1',
      build: () => UserFormCubit()..init(),
      act: (cubit) => cubit.updateField('1', ageKey),
      expect: () => [
        UserFormState.content(
          form: updateFormEntityValue(ageKey, 1),
        ),
      ],
    );
    blocTest<UserFormCubit, UserFormState>(
      'Edit Age - -1',
      build: () => UserFormCubit()..init(),
      act: (cubit) => cubit.updateField('-1', ageKey),
      expect: () => [
        UserFormState.content(
          form: updateFormEntityValue(ageKey, -1),
        ),
      ],
    );
    blocTest<UserFormCubit, UserFormState>(
      'Edit Age - parse Error',
      build: () => UserFormCubit()..init(),
      act: (cubit) => cubit.updateField('aa', ageKey),
      expect: () => [
        UserFormState.content(
          form: updateFormEntityError(
              ageKey, CommonValidatorErrorMessages.ageErrorParserMessage, 'aa'),
        ),
      ],
    );
    blocTest<UserFormCubit, UserFormState>(
      'Edit Age - 20',
      build: () => UserFormCubit()..init(),
      act: (cubit) => cubit.updateField('20', ageKey),
      expect: () => [
        UserFormState.content(
          form: updateFormEntityValue(ageKey, 20),
        ),
      ],
    );
  });
  group('UserFormCubit Edit emial (String)', () {
    blocTest<UserFormCubit, UserFormState>(
      'Edit email - k.n@gmail.com',
      build: () => UserFormCubit()..init(),
      act: (cubit) => cubit.updateField('k.n@gmail.com', emailKey),
      expect: () => [
        UserFormState.content(
          form: updateFormEntityValue(emailKey, 'k.n@gmail.com'),
        ),
      ],
    );
    blocTest<UserFormCubit, UserFormState>(
      'Edit email - k.ngmail.com',
      build: () => UserFormCubit()..init(),
      act: (cubit) => cubit.updateField('k.ngmail.com', emailKey),
      expect: () => [
        UserFormState.content(
          form: updateFormEntityValue(emailKey, 'k.ngmail.com'),
        ),
      ],
    );
  });

  group('UserFormCubit Edit agreement (bool)', () {
    blocTest<UserFormCubit, UserFormState>(
      'Edit agreement - true',
      build: () => UserFormCubit()..init(),
      act: (cubit) => cubit.updateField(true, agreementKey),
      expect: () => [
        UserFormState.content(
          form: updateFormEntityValue(agreementKey, true),
        ),
      ],
    );
  });
  group('UserFormCubit Edit gender (enum)', () {
    blocTest<UserFormCubit, UserFormState>(
      'Edit gender - male',
      build: () => UserFormCubit()..init(),
      act: (cubit) => cubit.updateField(GenderEnum.male, genderKey),
      expect: () => [
        UserFormState.content(
          form: updateFormEntityValue(genderKey, GenderEnum.male),
        ),
      ],
    );
  });

}
