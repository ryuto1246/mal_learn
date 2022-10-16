import 'package:flutter/material.dart';
import 'package:mal_learn/constant/colors.dart';

class OverlayLoadingPage extends StatelessWidget {
  const OverlayLoadingPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(color: AppColors.baseLightColor),
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
