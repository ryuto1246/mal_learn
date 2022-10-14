import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/constant/dimens.dart';
import 'package:mal_learn/constant/strings.dart';

class PasswordField extends ConsumerWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: Strings.passwordFiledTitle,
        labelStyle: Theme.of(context).textTheme.subtitle1,
        contentPadding: const EdgeInsets.only(bottom: Dimens.paddingXS),
      ),
      obscureText: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: passwordValidator,
    );
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return Strings.passwordRequiredMessage;
    } else if (value.length < 6) {
      return Strings.passwordNotValidMessage;
    } else {
      return null;
    }
  }
}
