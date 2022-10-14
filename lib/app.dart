import 'package:flutter/material.dart';
import 'package:mal_learn/constant/colors.dart';
import 'package:mal_learn/view/sign_in_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mal Learn',
      theme: ThemeData(
        primarySwatch: AppMaterialColor.primary,
        textTheme: Theme.of(context).textTheme.copyWith(
              headline2: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              subtitle1: const TextStyle(
                fontSize: 16,
                color: AppColors.accentColor,
              ),
              button: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
      ),
      home: const SignInScreen(),
    );
  }
}
