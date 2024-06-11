

import 'package:form_with_cubit/core/constant/common_form_map_key.dart';
import 'package:form_with_cubit/core/entities/form_entity.dart';
import 'package:form_with_cubit/core/validators/user_form_validator.dart';
import 'package:form_with_cubit/features/user_form/domain/entity/gender_enum.dart';

abstract class UserFormMap {
  static const Map<String, FormEntity> userFormMap = {
    CommonFormMapKey.email: FormEntity<String>(value: '', validation: UserFormValidator.validateEmail, key: CommonFormMapKey.email),
    CommonFormMapKey.password: FormEntity<String>(value: '', validation: UserFormValidator.validatePassword, key: CommonFormMapKey.password),
    CommonFormMapKey.age: FormEntity<int>(value: 0, validation: UserFormValidator.validateAge, parser: int.tryParse, key: CommonFormMapKey.age),
    CommonFormMapKey.agreement: FormEntity<bool>(value: false, validation: UserFormValidator.validateAgreement, key: CommonFormMapKey.agreement),
    CommonFormMapKey.gender: FormEntity<GenderEnum>(value: GenderEnum.other, validation: UserFormValidator.alwaysValidate, key: CommonFormMapKey.gender),
  };
}

