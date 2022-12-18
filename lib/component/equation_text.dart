import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class EquationText extends SpecialText {
  EquationText(TextStyle textStyle)
      : super(EquationText.firstFlag, EquationText.lastFlag, textStyle);

  static const firstFlag = r'\(';
  static const lastFlag = r'\)';

  @override
  InlineSpan finishText() {
    final text = toString();
    return ExtendedWidgetSpan(
      actualText: text,
      child: Math.tex(text.substring(2, text.length - 2)),
    );
  }
}
