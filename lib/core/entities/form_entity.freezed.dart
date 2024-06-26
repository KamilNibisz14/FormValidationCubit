// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormEntity<T> {
  String get key => throw _privateConstructorUsedError;
  T get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  dynamic Function(dynamic) get validation =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isValidationErrorOnSave => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;
  dynamic Function(String)? get parser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormEntityCopyWith<T, FormEntity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormEntityCopyWith<T, $Res> {
  factory $FormEntityCopyWith(
          FormEntity<T> value, $Res Function(FormEntity<T>) then) =
      _$FormEntityCopyWithImpl<T, $Res, FormEntity<T>>;
  @useResult
  $Res call(
      {String key,
      T value,
      String label,
      dynamic Function(dynamic) validation,
      String? errorMessage,
      bool isValidationErrorOnSave,
      bool isVisible,
      dynamic Function(String)? parser});
}

/// @nodoc
class _$FormEntityCopyWithImpl<T, $Res, $Val extends FormEntity<T>>
    implements $FormEntityCopyWith<T, $Res> {
  _$FormEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? label = null,
    Object? validation = null,
    Object? errorMessage = freezed,
    Object? isValidationErrorOnSave = null,
    Object? isVisible = null,
    Object? parser = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as dynamic Function(dynamic),
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidationErrorOnSave: null == isValidationErrorOnSave
          ? _value.isValidationErrorOnSave
          : isValidationErrorOnSave // ignore: cast_nullable_to_non_nullable
              as bool,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      parser: freezed == parser
          ? _value.parser
          : parser // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String)?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormEntityImplCopyWith<T, $Res>
    implements $FormEntityCopyWith<T, $Res> {
  factory _$$FormEntityImplCopyWith(
          _$FormEntityImpl<T> value, $Res Function(_$FormEntityImpl<T>) then) =
      __$$FormEntityImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String key,
      T value,
      String label,
      dynamic Function(dynamic) validation,
      String? errorMessage,
      bool isValidationErrorOnSave,
      bool isVisible,
      dynamic Function(String)? parser});
}

/// @nodoc
class __$$FormEntityImplCopyWithImpl<T, $Res>
    extends _$FormEntityCopyWithImpl<T, $Res, _$FormEntityImpl<T>>
    implements _$$FormEntityImplCopyWith<T, $Res> {
  __$$FormEntityImplCopyWithImpl(
      _$FormEntityImpl<T> _value, $Res Function(_$FormEntityImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? label = null,
    Object? validation = null,
    Object? errorMessage = freezed,
    Object? isValidationErrorOnSave = null,
    Object? isVisible = null,
    Object? parser = freezed,
  }) {
    return _then(_$FormEntityImpl<T>(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as dynamic Function(dynamic),
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidationErrorOnSave: null == isValidationErrorOnSave
          ? _value.isValidationErrorOnSave
          : isValidationErrorOnSave // ignore: cast_nullable_to_non_nullable
              as bool,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      parser: freezed == parser
          ? _value.parser
          : parser // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String)?,
    ));
  }
}

/// @nodoc

class _$FormEntityImpl<T> implements _FormEntity<T> {
  const _$FormEntityImpl(
      {required this.key,
      required this.value,
      required this.label,
      required this.validation,
      this.errorMessage,
      this.isValidationErrorOnSave = false,
      this.isVisible = true,
      this.parser});

  @override
  final String key;
  @override
  final T value;
  @override
  final String label;
  @override
  final dynamic Function(dynamic) validation;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isValidationErrorOnSave;
  @override
  @JsonKey()
  final bool isVisible;
  @override
  final dynamic Function(String)? parser;

  @override
  String toString() {
    return 'FormEntity<$T>(key: $key, value: $value, label: $label, validation: $validation, errorMessage: $errorMessage, isValidationErrorOnSave: $isValidationErrorOnSave, isVisible: $isVisible, parser: $parser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormEntityImpl<T> &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(
                    other.isValidationErrorOnSave, isValidationErrorOnSave) ||
                other.isValidationErrorOnSave == isValidationErrorOnSave) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.parser, parser) || other.parser == parser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      const DeepCollectionEquality().hash(value),
      label,
      validation,
      errorMessage,
      isValidationErrorOnSave,
      isVisible,
      parser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormEntityImplCopyWith<T, _$FormEntityImpl<T>> get copyWith =>
      __$$FormEntityImplCopyWithImpl<T, _$FormEntityImpl<T>>(this, _$identity);
}

abstract class _FormEntity<T> implements FormEntity<T> {
  const factory _FormEntity(
      {required final String key,
      required final T value,
      required final String label,
      required final dynamic Function(dynamic) validation,
      final String? errorMessage,
      final bool isValidationErrorOnSave,
      final bool isVisible,
      final dynamic Function(String)? parser}) = _$FormEntityImpl<T>;

  @override
  String get key;
  @override
  T get value;
  @override
  String get label;
  @override
  dynamic Function(dynamic) get validation;
  @override
  String? get errorMessage;
  @override
  bool get isValidationErrorOnSave;
  @override
  bool get isVisible;
  @override
  dynamic Function(String)? get parser;
  @override
  @JsonKey(ignore: true)
  _$$FormEntityImplCopyWith<T, _$FormEntityImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
