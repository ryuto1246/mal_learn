import 'package:flutter/material.dart';
import 'package:mal_learn/constant/colors.dart';
import 'package:mal_learn/constant/dimens.dart';
import 'package:mal_learn/ui_core/validator/validator.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    required this.label,
    required this.validators,
    this.onChanged,
    this.textInputType,
    this.initialValue,
    this.isPasswordTextField,
    super.key,
  });

  final String label;
  final List<Validator> validators;
  final String? initialValue;
  final Function(String)? onChanged;
  final bool? isPasswordTextField;
  final TextInputType? textInputType;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late final _label = widget.label;
  late final _validators = widget.validators;
  late final _onChanged = widget.onChanged;
  late final _initialValue = widget.initialValue;
  late final _isPasswordTextField = widget.isPasswordTextField ?? false;
  late final _textInputType = widget.textInputType;
  bool _isVisiblePassword = false;

  void _toggleVisiblePassword() {
    setState(() {
      _isVisiblePassword = !_isVisiblePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue: _initialValue,
        obscureText: _isPasswordTextField ? !_isVisiblePassword : false,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: _textInputType,
        style: const TextStyle(color: AppColors.black),
        decoration: InputDecoration(
          labelText: _label,
          labelStyle: Theme.of(context).textTheme.subtitle1,
          contentPadding: const EdgeInsets.only(bottom: Dimens.paddingXS),
          suffixIcon: _isPasswordTextField
              ? IconButton(
                  onPressed: _toggleVisiblePassword,
                  icon: Icon(
                    _isVisiblePassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: AppColors.mainColor,
                  ),
                  // constraints: const BoxConstraints(maxHeight: 14.0),
                  padding: EdgeInsets.zero,
                )
              : null,
          suffixIconConstraints:
              const BoxConstraints(maxHeight: Dimens.textFieldSuffixHeight),
        ),
        onChanged: (String? value) {
          if (_onChanged != null) {
            _onChanged!(value ?? '');
          }
        },
        validator: (String? value) {
          final result = _validators
              .where((validator) => validator.validate(value) == false)
              .toList();

          if (result.isNotEmpty) {
            return result.first.getMessage();
          } else {
            return null;
          }
        });
  }
}
