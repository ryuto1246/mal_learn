import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/constant/dimens.dart';
import 'package:mal_learn/constant/strings.dart';

class EmailFiled extends ConsumerWidget {
  const EmailFiled({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: Strings.emailFieldTitle,
        labelStyle: Theme.of(context).textTheme.subtitle1,
        contentPadding: const EdgeInsets.only(bottom: Dimens.paddingXS),
      ),
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: emailValidator,
    );
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return Strings.emailRequiredMessage;
    } else if (EmailValidator.validate(value) != true) {
      return Strings.emailNotValidMessage;
    } else {
      return null;
    }
  }
}
