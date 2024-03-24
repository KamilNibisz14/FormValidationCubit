// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserFormState {
  FormEntity<String> get email => throw _privateConstructorUsedError;
  FormEntity<String> get password => throw _privateConstructorUsedError;
  FormEntity<int> get age => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormEntity<String> email,
            FormEntity<String> password, FormEntity<int> age)
        content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormEntity<String> email, FormEntity<String> password,
            FormEntity<int> age)?
        content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormEntity<String> email, FormEntity<String> password,
            FormEntity<int> age)?
        content,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Content value)? content,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFormStateCopyWith<UserFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormStateCopyWith<$Res> {
  factory $UserFormStateCopyWith(
          UserFormState value, $Res Function(UserFormState) then) =
      _$UserFormStateCopyWithImpl<$Res, UserFormState>;
  @useResult
  $Res call(
      {FormEntity<String> email,
      FormEntity<String> password,
      FormEntity<int> age});

  $FormEntityCopyWith<String, $Res> get email;
  $FormEntityCopyWith<String, $Res> get password;
  $FormEntityCopyWith<int, $Res> get age;
}

/// @nodoc
class _$UserFormStateCopyWithImpl<$Res, $Val extends UserFormState>
    implements $UserFormStateCopyWith<$Res> {
  _$UserFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormEntity<String>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FormEntity<String>,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as FormEntity<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormEntityCopyWith<String, $Res> get email {
    return $FormEntityCopyWith<String, $Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FormEntityCopyWith<String, $Res> get password {
    return $FormEntityCopyWith<String, $Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FormEntityCopyWith<int, $Res> get age {
    return $FormEntityCopyWith<int, $Res>(_value.age, (value) {
      return _then(_value.copyWith(age: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $UserFormStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormEntity<String> email,
      FormEntity<String> password,
      FormEntity<int> age});

  @override
  $FormEntityCopyWith<String, $Res> get email;
  @override
  $FormEntityCopyWith<String, $Res> get password;
  @override
  $FormEntityCopyWith<int, $Res> get age;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? age = null,
  }) {
    return _then(_$ContentImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormEntity<String>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FormEntity<String>,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as FormEntity<int>,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(
      {this.email = const FormEntity(value: ''),
      this.password = const FormEntity(value: ''),
      this.age = const FormEntity(value: 0)});

  @override
  @JsonKey()
  final FormEntity<String> email;
  @override
  @JsonKey()
  final FormEntity<String> password;
  @override
  @JsonKey()
  final FormEntity<int> age;

  @override
  String toString() {
    return 'UserFormState.content(email: $email, password: $password, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormEntity<String> email,
            FormEntity<String> password, FormEntity<int> age)
        content,
  }) {
    return content(email, password, age);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormEntity<String> email, FormEntity<String> password,
            FormEntity<int> age)?
        content,
  }) {
    return content?.call(email, password, age);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormEntity<String> email, FormEntity<String> password,
            FormEntity<int> age)?
        content,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(email, password, age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Content value)? content,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _Content implements UserFormState {
  const factory _Content(
      {final FormEntity<String> email,
      final FormEntity<String> password,
      final FormEntity<int> age}) = _$ContentImpl;

  @override
  FormEntity<String> get email;
  @override
  FormEntity<String> get password;
  @override
  FormEntity<int> get age;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
