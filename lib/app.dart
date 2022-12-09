import 'package:flutter/material.dart';
import 'package:mal_learn/constant/colors.dart';
import 'package:mal_learn/view/sign_up_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mal Learn',
      theme: ThemeData(
        primarySwatch: AppMaterialColor.primary,
      ),
      home: const SignUpScreen(),
    );
  }
}
