import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_entity.freezed.dart';

@freezed
class FormEntity<T> with _$FormEntity<T> {
  const factory FormEntity({
    required T value,
    String? errorMessage,
    required Function(String) validation,
  }) = _FormEntity<T>;
}

extension FormEntityX<T> on FormEntity<T> {
  String? validate() {
    return validation(value.toString());
  }
}
