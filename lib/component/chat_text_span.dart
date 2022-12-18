import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:mal_learn/component/equation_text.dart';

class ChatTextSpanBuilder extends SpecialTextSpanBuilder {
  ChatTextSpanBuilder();

  @override
  SpecialText? createSpecialText(
    String flag, {
    required int index,
    void Function(dynamic)? onTap,
    TextStyle? textStyle,
  }) {
    if (flag != '' && isStart(flag, EquationText.firstFlag)) {
      return EquationText(textStyle ?? const TextStyle());
    }

    return null;
  }
}
