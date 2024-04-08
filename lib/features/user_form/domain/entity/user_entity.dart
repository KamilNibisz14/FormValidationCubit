import 'package:form_with_cubit/core/constant/common_form_map_key.dart';
import 'package:form_with_cubit/core/entities/form_entity.dart';
import 'package:form_with_cubit/core/validators/user_form_validator.dart';
import 'package:form_with_cubit/features/user_form/domain/entity/gender_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String email,
    required String password,
    required int age,
    required bool agreement,
    required GenderEnum gender,
  }) = _UserEntity;

  factory UserEntity.createNew() => const UserEntity(
        email: '',
        password: '',
        age: 0,
        agreement: false,
        gender: GenderEnum.other,
      );

  // create form map from entity
  static Map<String, FormEntity<dynamic>> createUserFormMapFromUserEntity(UserEntity user) {
    return {
      CommonFormMapKey.email: FormEntity<String>(value: user.email, validation: UserFormValidator.validateEmail),
      CommonFormMapKey.password: FormEntity<String>(value: user.password, validation: UserFormValidator.validatePassword),
      CommonFormMapKey.age: FormEntity<int>(value: user.age, validation: UserFormValidator.validateAge, parser: int.tryParse),
      CommonFormMapKey.agreement: FormEntity<bool>(value: user.agreement, validation: UserFormValidator.validateAgreement),
      CommonFormMapKey.gender: FormEntity<GenderEnum>(value: user.gender, validation: UserFormValidator.alwaysValidate),
    };
  }
  // create entiti base on form map 
  factory UserEntity.fromMap(Map<String, FormEntity<dynamic>> formMap){
    return UserEntity(
    email: formMap[CommonFormMapKey.email]?.value as String,
    password: formMap[CommonFormMapKey.password]?.value as String,
    age: formMap[CommonFormMapKey.age]?.value as int,
    agreement: formMap[CommonFormMapKey.agreement]?.value as bool,
    gender: formMap[CommonFormMapKey.gender]?.value as GenderEnum,
  );
  }
}

