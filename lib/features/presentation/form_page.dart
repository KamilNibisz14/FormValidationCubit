import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_with_cubit/features/presentation/cubit/user_form_cubit.dart';
import 'package:form_with_cubit/features/presentation/widgets/common_form_field.dart';

const emailLabel = 'Email*';
const passwordLabel = 'Password*';
const ageLabel = 'Age*';
const levelLabel = 'Level';
const buttonText = 'Save';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserFormCubit(),
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
                onChange: context.read<UserFormCubit>().updateEmail,
                errorMessage: state.email.errorMessage,
              ),
              CommonFormField(
                labelText: passwordLabel,
                obscureText: true,
                onChange: context.read<UserFormCubit>().updatePassword,
                errorMessage: state.password.errorMessage,
              ),
              CommonFormField(
                labelText: ageLabel,
                onChange: context.read<UserFormCubit>().updateAge,
                errorMessage: state.age.errorMessage,
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
