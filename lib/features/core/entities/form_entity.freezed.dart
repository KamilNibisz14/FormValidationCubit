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
  T get value => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  dynamic Function(String) get validation => throw _privateConstructorUsedError;

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
      {T value, String? errorMessage, dynamic Function(String) validation});
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
    Object? value = freezed,
    Object? errorMessage = freezed,
    Object? validation = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
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
      {T value, String? errorMessage, dynamic Function(String) validation});
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
    Object? value = freezed,
    Object? errorMessage = freezed,
    Object? validation = null,
  }) {
    return _then(_$FormEntityImpl<T>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
    ));
  }
}

/// @nodoc

class _$FormEntityImpl<T> implements _FormEntity<T> {
  const _$FormEntityImpl(
      {required this.value, this.errorMessage, required this.validation});

  @override
  final T value;
  @override
  final String? errorMessage;
  @override
  final dynamic Function(String) validation;

  @override
  String toString() {
    return 'FormEntity<$T>(value: $value, errorMessage: $errorMessage, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormEntityImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.validation, validation) ||
                other.validation == validation));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(value), errorMessage, validation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormEntityImplCopyWith<T, _$FormEntityImpl<T>> get copyWith =>
      __$$FormEntityImplCopyWithImpl<T, _$FormEntityImpl<T>>(this, _$identity);
}

abstract class _FormEntity<T> implements FormEntity<T> {
  const factory _FormEntity(
          {required final T value,
          final String? errorMessage,
          required final dynamic Function(String) validation}) =
      _$FormEntityImpl<T>;

  @override
  T get value;
  @override
  String? get errorMessage;
  @override
  dynamic Function(String) get validation;
  @override
  @JsonKey(ignore: true)
  _$$FormEntityImplCopyWith<T, _$FormEntityImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
