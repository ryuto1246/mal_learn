import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mal_learn/component/app_date_pikker.dart';
import 'package:mal_learn/component/app_text_field.dart';
import 'package:mal_learn/component/form_submit_button.dart';
import 'package:mal_learn/component/overlay_loading_page.dart';
import 'package:mal_learn/component/vertical_spacer.dart';
import 'package:mal_learn/constant/assets.dart';
import 'package:mal_learn/constant/dimens.dart';
import 'package:mal_learn/constant/strings.dart';
import 'package:mal_learn/constant/test_style.dart';
import 'package:mal_learn/model/error.dart';
import 'package:mal_learn/provider/auth_provider.dart';
import 'package:mal_learn/provider/user_profile_provider.dart';
import 'package:mal_learn/view/home_screen.dart';
import 'package:mal_learn/view/sign_in_screen.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  String? _email;
  String? _password;
  DateTime? _birthDay;
  String? _userName;

  void _setUserName(String userName) {
    setState(() {
      _userName = userName;
    });
  }

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

  void _setBirthDay(DateTime birthDay) {
    setState(() {
      _birthDay = birthDay;
    });
  }

  Future<void> _signUp() async {
    ref.read(authViewModelProvider.notifier).signUp(
          FirebaseAuth.instance,
          _userName!,
          _email!,
          _password!,
          _birthDay!,
        );
  }

  Future<void> _registerProfile(String uid) async {
    ref.read(userProfileViewModelProvider.notifier).registerProfile(
          FirebaseFirestore.instance,
          uid: uid,
          userName: _userName!,
          birthDay: _birthDay!,
          iconPath: '',
        );
  }

  void _initializeState() {
    ref.read(authViewModelProvider.notifier).initializeState();
    ref.read(userProfileViewModelProvider.notifier).initializeState();
  }

  void _moveToSignInScreen() {
    _initializeState();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute<Scaffold>(
        builder: (context) => const SignInScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(authViewModelProvider).maybeWhen(
          signUpSuccess: (User user) {
            return ref.watch(userProfileViewModelProvider).maybeWhen(
                  init: () {
                    WidgetsBinding.instance.addPostFrameCallback(
                      (_) => _registerProfile(user.uid),
                    );
                    return const OverlayLoadingPage();
                  },
                  success: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute<Scaffold>(
                          builder: (context) => HomeScreen(user.uid),
                        ),
                      );
                    });
                    return const OverlayLoadingPage();
                  },
                  orElse: () => const OverlayLoadingPage(),
                );
          },
          loading: () => const OverlayLoadingPage(),
          failure: (AppError error) {
            WidgetsBinding.instance.addPostFrameCallback(
              (_) => _initializeState(),
            );
            return _buildSignUpScreen();
          },
          orElse: _buildSignUpScreen,
        );
  }

  Scaffold _buildSignUpScreen() {
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
                        Strings.signUpTitle,
                        style: AppTextStyle.headline.bold,
                      ),
                      const VerticalSpacer(Dimens.paddingS),
                      _buildUserNameField(),
                      const VerticalSpacer(Dimens.paddingM),
                      _buildEmailField(),
                      const VerticalSpacer(Dimens.paddingM),
                      _buildPasswordField(),
                      const VerticalSpacer(Dimens.paddingM),
                      _buildBirthDayField(),
                      const VerticalSpacer(Dimens.paddingM),
                      _buildSubmitButton(),
                      const VerticalSpacer(Dimens.paddingXS),
                      _buildLinkToSignInScreen(),
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
      labelText: Strings.signUpTitle,
      onPressed: _signUp,
    );
  }

  Center _buildLinkToSignInScreen() {
    return Center(
      child: TextButton(
        onPressed: _moveToSignInScreen,
        child: Text(
          'アカウントをお持ちの方はこちら',
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
    );
  }

  AppTextField _buildUserNameField() {
    return AppTextField(
      label: Strings.userNameFieldTitle,
      validators: const [],
      onChanged: _setUserName,
      initialValue: _userName,
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

  AppDatePicker _buildBirthDayField() {
    return AppDatePicker(
      label: Strings.birthDayFieldTitle,
      initialValue: _birthDay,
      onChanged: _setBirthDay,
    );
  }
}
