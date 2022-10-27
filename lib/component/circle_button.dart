import 'package:flutter/material.dart';
import 'package:mal_learn/constant/dimens.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    required this.icon,
    required this.color,
    required this.onPressed,
    super.key,
  });

  final IconData icon;
  final Color color;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimens.appbarButtonSize,
      height: Dimens.appbarButtonSize,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: const CircleBorder(),
          side: BorderSide(
            color: Theme.of(context).primaryColor,
            width: Dimens.appbarButtonWidth,
          ),
          padding: EdgeInsets.zero,
        ),
        child: Icon(icon, color: color),
      ),
    );
  }
}
