import 'package:form_with_cubit/core/validators/common_validator_error_messages.dart';

abstract class UserFormValidator {
  static String? validateEmail(dynamic email) {
    final emailRegex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\\.,;:\s@\"]+\.)+[^<>()[\]\\.,;:\s@\"]{2,})$');

    if (emailRegex.hasMatch(email)) {
      return null;
    }
    return CommonValidatorErrorMessages.emailErrorMessage;
  }

  static String? validatePassword(dynamic password) {
    final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[0-9]).{8,}$');

    if (passwordRegex.hasMatch(password)) {
      return null;
    }
    return CommonValidatorErrorMessages.passwordErrorMessage;
  }

  static String? validateAge(dynamic ageString) {
    final int? age = int.tryParse(ageString);
    if (age == null) {
      return CommonValidatorErrorMessages.ageErrorParserMessage;
    }
    if (age > 0) {
      return null;
    }
    return CommonValidatorErrorMessages.ageErrorMessage;
  }

  static String? validateAgreement(dynamic agreementBool) {
    final bool? agreement = bool.tryParse(agreementBool);
    if (agreement != null && agreement == true) {
      return null;
    }
    return CommonValidatorErrorMessages.agreeementErrorMessage;
  }

  static String? alwaysValidate(dynamic value) {
    return null;
  }
}
