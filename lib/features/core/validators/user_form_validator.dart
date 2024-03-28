import 'package:form_with_cubit/features/core/validators/common_validator_error_messages.dart';

abstract class UserFormValidator {
  static String? validateEmail(String email) {
    final emailRegex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\\.,;:\s@\"]+\.)+[^<>()[\]\\.,;:\s@\"]{2,})$');

    if (emailRegex.hasMatch(email)) {
      return null;
    }
    return CommonValidatorErrorMessages.emailErrorMessage;
  }

  static String? validatePassword(String password) {
    final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[0-9]).{8,}$');

    if (passwordRegex.hasMatch(password)) {
      return null;
    }
    return CommonValidatorErrorMessages.passwordErrorMessage;
  }

  static String? validateAge(String ageString) {
    int? age = int.tryParse(ageString);
    if (age != null && age > 0) {
      return null;
    }
    return CommonValidatorErrorMessages.ageErrorMessage;
  }
}
