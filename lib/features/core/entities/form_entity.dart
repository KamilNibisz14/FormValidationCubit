import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_entity.freezed.dart';

@freezed
class FormEntity<T> with _$FormEntity<T> {
  const factory FormEntity({
    required T value,
    String? errorMessage,
  }) = _FormEntity<T>;
}