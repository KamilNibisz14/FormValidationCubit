import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_with_cubit/core/constant/common_form_map_key.dart';
import 'package:form_with_cubit/core/widgets/coomon_error_messaage.dart';
import 'package:form_with_cubit/features/user_form/domain/entity/gender_enum.dart';
import 'package:form_with_cubit/features/user_form/presentation/cubit/user_form_cubit.dart';
import 'package:form_with_cubit/features/user_form/presentation/widgets/common_form_field.dart';

const emailLabel = 'Email*';
const passwordLabel = 'Password*';
const ageLabel = 'Age*';
const agreementLabel = 'Agreement*';
const genderLabel = 'Gender*';
const buttonText = 'Save';

const emailKey = CommonFormMapKey.email;
const passwordKey = CommonFormMapKey.password;
const ageKey = CommonFormMapKey.age;
const agreementKey = CommonFormMapKey.agreement;
const genderKey = CommonFormMapKey.gender;

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserFormCubit()..init(),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserFormCubit, UserFormState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CommonFormField(
                labelText: emailLabel,
                onChange: (value) =>
                    context.read<UserFormCubit>().updateField(value, emailKey),
                errorMessage: state.form[emailKey]?.errorMessage,
              ),
              CommonFormField(
                labelText: passwordLabel,
                obscureText: true,
                onChange: (value) => context
                    .read<UserFormCubit>()
                    .updateField(value, passwordKey),
                errorMessage: state.form[passwordKey]?.errorMessage,
              ),
              CommonFormField(
                labelText: ageLabel,
                onChange: (value) =>
                    context.read<UserFormCubit>().updateField(value, ageKey),
                errorMessage: state.form[ageKey]?.errorMessage,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(agreementLabel),
                      Checkbox(
                        value: state.form[agreementKey]?.value,
                        onChanged: (bool? newValue) {
                          context
                              .read<UserFormCubit>()
                              .updateField(newValue ?? false, agreementKey);
                        },
                      ),
                    ],
                  ),
                  CoomonErrorMessage(errorMessage: state.form[agreementKey]?.errorMessage,),
                ],
              ),
              DropdownButton<GenderEnum>(
                value: state.form[genderKey]?.value,
                onChanged: (GenderEnum? newValue) {
                  context
                      .read<UserFormCubit>()
                      .updateField(newValue, genderKey);
                },
                items: GenderEnum.values
                    .map<DropdownMenuItem<GenderEnum>>((GenderEnum value) {
                  return DropdownMenuItem<GenderEnum>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              ),
              ElevatedButton(
                  onPressed: () => context.read<UserFormCubit>().onSave(() {
                        print("Sukces");
                      }),
                  child: const Text(buttonText))
            ],
          ),
        );
      },
    );
  }
}
