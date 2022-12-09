import 'package:flutter/material.dart';
import 'package:mal_learn/constant/colors.dart';
import 'package:mal_learn/constant/dimens.dart';
import 'package:mal_learn/constant/test_style.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({required this.labelText, this.onPressed, super.key});
  final String labelText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        color: AppColors.mainColor,
        shape: const StadiumBorder(),
        height: Dimens.buttonHeight,
        onPressed: onPressed ?? () {},
        textTheme: ButtonTextTheme.primary,
        child: Text(labelText, style: AppTextStyle.title.bold.white),
      ),
    );
  }
}
