import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_entity.freezed.dart';

@freezed
class FormEntity<T> with _$FormEntity<T> {
  const factory FormEntity({
    required String key,
    required T value,
    required String label,
    required Function(dynamic) validation,
    String? errorMessage,
    @Default(false) bool isValidationErrorOnSave,
    @Default(true) bool isVisible,
    Function(String)? parser,
  }) = _FormEntity<T>;
}

extension FormEntityX<T> on FormEntity<T> {
  String? validate() {
    return validation(value.toString());
  }
}

extension FormEntityY<T> on FormEntity<T> {
  String? parse(String value) {
    if (parser != null) {
      return value;
    }
    if(parser!(value) != null){
      return null;
    }

    return parser!(value);
  }
}
