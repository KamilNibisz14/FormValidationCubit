import 'package:form_with_cubit/features/core/constant/common_form_map_key.dart';
import 'package:form_with_cubit/features/core/entities/form_entity.dart';
import 'package:form_with_cubit/features/core/validators/user_form_validator.dart';

abstract class UserFormMap {
  static const Map<String, FormEntity> userFormEntity = {
    CommonFormMapKey.email: FormEntity<String>(value: '', validation: UserFormValidator.validateEmail),
    CommonFormMapKey.password: FormEntity<String>(value: '', validation: UserFormValidator.validatePassword),
    CommonFormMapKey.age: FormEntity<int>(value: 0, validation: UserFormValidator.validateAge),
  };
}
