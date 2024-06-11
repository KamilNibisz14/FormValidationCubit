import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_with_cubit/core/constant/common_form_map_key.dart';
import 'package:form_with_cubit/core/constant/debouncer.dart';
import 'package:form_with_cubit/core/widgets/coomon_error_messaage.dart';
import 'package:form_with_cubit/features/user_form/domain/entity/gender_enum.dart';
import 'package:form_with_cubit/features/user_form/domain/entity/user_entity.dart';
import 'package:form_with_cubit/features/user_form/presentation/cubit/user_form_cubit.dart';
import 'package:form_with_cubit/features/user_form/presentation/widgets/common_form_field.dart';

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
    final _debouncer = Debouncer();
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
        print(state.form);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          for (var entry in state.form.entries) {
            if (entry.value.isValidationErrorOnSave) {
              scrollToField(UserEntity.globalKeys[entry.key]!);
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
                TextField(
                  onChanged: (value) {
                    _debouncer(() {
                        context.read<UserFormCubit>().search(value);
                    });
                  },
                ),
                const SizedBox(
                  height: 100,
                ),
                CommonFormField(
                    isVisible: state.form[emailKey]?.isVisible,
                    key: UserEntity.globalKeys[emailKey],
                    labelText: state.form[emailKey]?.label,
                    onChange: (value) => context
                        .read<UserFormCubit>()
                        .updateField(value, emailKey),
                    errorMessage: state.form[emailKey]?.errorMessage,
                    onFocusedChanged: (value) => context
                        .read<UserFormCubit>()
                        .onFocusedChanged(value, ageKey)
                  ),
                CommonFormField(
                    isVisible: state.form[passwordKey]?.isVisible,
                    key: UserEntity.globalKeys[passwordKey],
                    labelText: state.form[passwordKey]?.label,
                    obscureText: true,
                    onChange: (value) => context
                        .read<UserFormCubit>()
                        .updateField(value, passwordKey),
                    errorMessage: state.form[passwordKey]?.errorMessage,
                    onFocusedChanged: (value) => context
                        .read<UserFormCubit>()
                        .onFocusedChanged(value, ageKey)),
                CommonFormField(
                  isVisible: state.form[ageKey]?.isVisible,
                  key: UserEntity.globalKeys[ageKey],
                  labelText: state.form[ageKey]?.label,
                  onChange: (value) =>
                      context.read<UserFormCubit>().updateField(value, ageKey),
                  errorMessage: state.form[ageKey]?.errorMessage,
                  onFocusedChanged: (value) => context
                      .read<UserFormCubit>()
                      .onFocusedChanged(value, ageKey),
                ),
                state.form[agreementKey]?.isVisible == true ?Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(state.form[agreementKey]?.label ?? '',),
                        Checkbox(
                          key: UserEntity.globalKeys[agreementKey],
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
                ):const SizedBox.shrink(),
                state.form[genderKey]?.isVisible == true? DropdownButton<GenderEnum>(
                  key: UserEntity.globalKeys[genderKey],
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
                ):const SizedBox.shrink(),
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
