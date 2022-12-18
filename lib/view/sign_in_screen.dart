import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mal_learn/component/app_text_field.dart';
import 'package:mal_learn/component/form_submit_button.dart';
import 'package:mal_learn/component/overlay_loading_page.dart';
import 'package:mal_learn/component/vertical_spacer.dart';
import 'package:mal_learn/constant/assets.dart';
import 'package:mal_learn/constant/dimens.dart';
import 'package:mal_learn/constant/strings.dart';
import 'package:mal_learn/constant/test_style.dart';
import 'package:mal_learn/core/logger.dart';
import 'package:mal_learn/provider/auth_provider.dart';
import 'package:mal_learn/view/home_screen.dart';
import 'package:mal_learn/view/sign_up_screen.dart';

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

  Future<void> _signIn() async {
    ref.read(authViewModelProvider.notifier).signIn(
          FirebaseAuth.instance,
          _email,
          _password,
        );
  }

  void _initializeState() {
    ref.read(authViewModelProvider.notifier).initializeState();
  }

  void _moveToSignUpScreen() {
    _initializeState();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute<Scaffold>(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(authViewModelProvider).maybeWhen(
          signInSuccess: (User user) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              logger.d('Moving to home screen.');
              Navigator.of(context).pushReplacement(
                MaterialPageRoute<Scaffold>(
                  builder: (context) => HomeScreen(user.uid),
                ),
              );
            });
            return const OverlayLoadingPage();
          },
          loading: () => const OverlayLoadingPage(),
          failure: (e) {
            Fluttertoast.showToast(msg: e.toString());
            return _buildSignInScreen();
          },
          orElse: _buildSignInScreen,
        );
  }

  Scaffold _buildSignInScreen() {
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
                        style: AppTextStyle.headline.bold,
                      ),
                      const VerticalSpacer(Dimens.paddingS),
                      _buildEmailField(),
                      const VerticalSpacer(Dimens.paddingM),
                      _buildPasswordField(),
                      const VerticalSpacer(Dimens.paddingM),
                      _buildSubmitButton(),
                      const VerticalSpacer(Dimens.paddingXS),
                      _buildLinkToSignUpScreen(),
                      const VerticalSpacer(Dimens.paddingS),
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

  SubmitButton _buildSubmitButton() {
    return SubmitButton(
      labelText: Strings.signInTitle,
      onPressed: _signIn,
    );
  }

  Center _buildLinkToSignUpScreen() {
    return Center(
      child: TextButton(
        onPressed: _moveToSignUpScreen,
        child: Text(
          'アカウントをお持ちでない方はこちら',
          style: AppTextStyle.body.underline,
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
