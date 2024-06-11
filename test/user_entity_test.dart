import 'package:flutter_test/flutter_test.dart';
import 'package:form_with_cubit/core/constant/common_form_map_key.dart';
import 'package:form_with_cubit/core/entities/form_entity.dart';
import 'package:form_with_cubit/features/user_form/domain/entity/gender_enum.dart';
import 'package:form_with_cubit/features/user_form/domain/entity/user_entity.dart';

void main() {
  group('UserEntity', () {
    test('UserEntity.createNew creates a valid instance with default values',
        () {
      final user = UserEntity.createNew();

      expect(user.email, '');
      expect(user.password, '');
      expect(user.age, 0);
      expect(user.agreement, false);
      expect(user.gender, GenderEnum.other);
    });

    test(
        'createUserFormMapFromUserEntity correctly maps UserEntity to form map',
        () {
      final user = const UserEntity(
        email: 'test@example.com',
        password: 'password123',
        age: 25,
        agreement: true,
        gender: GenderEnum.male,
      );

      final formMap = UserEntity.createUserFormMapFromUserEntity(user);

      expect(formMap[CommonFormMapKey.email]?.value, 'test@example.com');
      expect(formMap[CommonFormMapKey.password]?.value, 'password123');
      expect(formMap[CommonFormMapKey.age]?.value, 25);
      expect(formMap[CommonFormMapKey.agreement]?.value, true);
      expect(formMap[CommonFormMapKey.gender]?.value, GenderEnum.male);
    });
    test('creates a valid instance from form map', () {
      final formMap = {
        CommonFormMapKey.email:
            FormEntity<String>(value: 'test@example.com', validation: (_) {}, key: ''),
        CommonFormMapKey.password:
            FormEntity<String>(value: 'password123', validation: (_) {}, key: ''),
        CommonFormMapKey.age: FormEntity<int>(value: 25, validation: (_) {}, key: ''),
        CommonFormMapKey.agreement:
            FormEntity<bool>(value: true, validation: (_) {}, key: ''),
        CommonFormMapKey.gender: FormEntity<GenderEnum>(
            value: GenderEnum.female, validation: (_) {}, key: ''),
      };

      final user = UserEntity.fromMap(formMap);

      expect(user.email, 'test@example.com');
      expect(user.password, 'password123');
      expect(user.age, 25);
      expect(user.agreement, true);
      expect(user.gender, GenderEnum.female);
    });
  });
}
