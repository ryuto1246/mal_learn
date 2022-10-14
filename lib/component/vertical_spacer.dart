import 'package:flutter/material.dart';

class VerticalSpacer extends StatelessWidget {
  const VerticalSpacer(this.h, {super.key});
  final double h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: h);
  }
}
