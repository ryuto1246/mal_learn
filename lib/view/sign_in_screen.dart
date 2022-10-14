import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/component/app_text_field.dart';
import 'package:mal_learn/component/form_email_field.dart';
import 'package:mal_learn/component/form_submit_button.dart';
import 'package:mal_learn/component/vertical_spacer.dart';
import 'package:mal_learn/constant/assets.dart';
import 'package:mal_learn/constant/dimens.dart';
import 'package:mal_learn/constant/strings.dart';
import 'package:mal_learn/provider/auth_provider.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  String _email = '';
  String _password = '';

  void _setEmail(String email) {
    setState(() {
      _email = email;
    });
  }

  void _setPassword(String password) {
    setState(() {
      _password = password;
    });
  }

  // void _setIsValidEmail(bool isValid) {
  //   setState(() {
  //           _isValidEmail = isValid;
  //   });
  // }

  // void _setIsValidPassword(bool isValid) {
  //   setState(() {
  //     _isValidPassword = isValid;
  //   });
  // }

  // bool _isValidAllForm() => _isValidEmail && _isValidPassword;

  Future<void> _signIn() async {
    ref.read(authViewModelProvider.notifier).signIn(
          FirebaseAuth.instance,
          _email,
          _password,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: EdgeInsets.only(
                left: Dimens.paddingL,
                right: Dimens.paddingL,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Form(
                child: ConstrainedBox(
                  constraints:
                      BoxConstraints.tightFor(height: constraints.maxHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const VerticalSpacer(Dimens.paddingL),
                      const Expanded(
                        child: Center(
                          child: Image(image: AssetImage(AssetList.playTime)),
                        ),
                      ),
                      const VerticalSpacer(Dimens.paddingM),
                      Text(
                        Strings.signInTitle,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const VerticalSpacer(Dimens.paddingM),
                      _buildEmailField(),
                      const VerticalSpacer(Dimens.paddingM),
                      _buildPasswordField(),
                      const VerticalSpacer(Dimens.paddingM),
                      SubmitButton(labelText: 'ログイン', onPressed: _signIn),
                      const VerticalSpacer(Dimens.paddingM),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  AppTextField _buildEmailField() {
    return AppTextField(
      label: Strings.emailFieldTitle,
      validators: const [],
      onChanged: _setEmail,
      initialValue: _email,
    );
  }

  AppTextField _buildPasswordField() {
    return AppTextField(
      label: Strings.passwordFiledTitle,
      validators: const [],
      onChanged: _setPassword,
      initialValue: _password,
      isPasswordTextField: true,
    );
  }
}
