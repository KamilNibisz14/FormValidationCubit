import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final Map<String, GlobalKey> globalKeys = {
      CommonFormMapKey.email: GlobalKey(),
      CommonFormMapKey.password: GlobalKey(),
      CommonFormMapKey.age: GlobalKey(),
      CommonFormMapKey.agreement: GlobalKey(),
      CommonFormMapKey.gender: GlobalKey(),
    };

    final scrollController = useScrollController();

    void scrollToField(GlobalKey key) {
      final currContext = key.currentContext;
      if (currContext != null) {
        Scrollable.ensureVisible(
          currContext,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      }
      context.read<UserFormCubit>().clearIsValidationErrorOnSave();
    }

    return BlocBuilder<UserFormCubit, UserFormState>(
      builder: (context, state) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          for (var entry in state.form.entries) {
            if (entry.value.isValidationErrorOnSave) {
              scrollToField(globalKeys[entry.key]!);
              break;
            }
          }
        });

        return SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CommonFormField(
                 key: globalKeys[emailKey],
                  labelText: emailLabel,
                  onChange: (value) => context
                      .read<UserFormCubit>()
                      .updateField(value, emailKey),
                  errorMessage: state.form[emailKey]?.errorMessage,
                ),
                CommonFormField(
                  key: globalKeys[passwordKey],
                  labelText: passwordLabel,
                  obscureText: true,
                  onChange: (value) => context
                      .read<UserFormCubit>()
                      .updateField(value, passwordKey),
                  errorMessage: state.form[passwordKey]?.errorMessage,
                ),
                CommonFormField(
                  key: globalKeys[ageKey],
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
                          key: globalKeys[agreementKey],
                          value: state.form[agreementKey]?.value,
                          onChanged: (bool? newValue) {
                            context
                                .read<UserFormCubit>()
                                .updateField(newValue ?? false, agreementKey);
                          },
                        ),
                      ],
                    ),
                    CoomonErrorMessage(
                      errorMessage: state.form[agreementKey]?.errorMessage,
                    ),
                  ],
                ),
                DropdownButton<GenderEnum>(
                  key: globalKeys[globalKeys],
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
                SizedBox(
                  height: 1000,
                ),
                ElevatedButton(
                    onPressed: () => context.read<UserFormCubit>().onSave(() {
                          print("Sukces");
                        }),
                    child: const Text(buttonText))
              ],
            ),
          ),
        );
      },
    );
  }
}
