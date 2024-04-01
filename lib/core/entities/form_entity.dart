import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_entity.freezed.dart';

@freezed
class FormEntity<T> with _$FormEntity<T> {
  const factory FormEntity({
    required T value,
    required Function(dynamic) validation,
    String? errorMessage,
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
