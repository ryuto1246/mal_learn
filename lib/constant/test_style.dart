import 'package:flutter/material.dart';
import 'package:mal_learn/constant/colors.dart';

class AppTextStyle {
  static _toStyle(
    double fontSize,
    FontWeight fontWeight,
    double letterSpacing, {
    Color color = AppColors.black,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
    );
  }

  static final display = _AppTextStyleSet(
    large: _toStyle(57, FontWeight.w400, 0),
    medium: _toStyle(45, FontWeight.w400, 0),
    small: _toStyle(36, FontWeight.w400, 0),
  );

  static final headline = _AppTextStyleSet(
    large: _toStyle(32, FontWeight.w400, 0),
    medium: _toStyle(28, FontWeight.w400, 0),
    small: _toStyle(24, FontWeight.w400, 0),
  );

  static final title = _AppTextStyleSet(
    large: _toStyle(22, FontWeight.w400, 0),
    medium: _toStyle(16, FontWeight.w500, 0.15),
    small: _toStyle(14, FontWeight.w500, 0.1),
  );

  static final label = _AppTextStyleSet(
    large: _toStyle(14, FontWeight.w500, 0.1),
    medium: _toStyle(12, FontWeight.w500, 0.5),
    small: _toStyle(11, FontWeight.w500, 0.5),
  );

  static final body = _AppTextStyleSet(
    large: _toStyle(14, FontWeight.w400, 0.5),
    medium: _toStyle(14, FontWeight.w400, 0.25),
    small: _toStyle(12, FontWeight.w500, 0.4),
  );
}

class _AppTextStyle extends TextStyle {
  _AppTextStyle(TextStyle style)
      : super(
          color: style.color,
          backgroundColor: style.backgroundColor,
          fontSize: style.fontSize,
          fontWeight: style.fontWeight,
          fontStyle: style.fontStyle,
          letterSpacing: style.letterSpacing,
          wordSpacing: style.wordSpacing,
          textBaseline: style.textBaseline,
          height: style.height,
          leadingDistribution: style.leadingDistribution,
          locale: style.locale,
          foreground: style.foreground,
          background: style.background,
          shadows: style.shadows,
          fontFeatures: style.fontFeatures,
          decoration: style.decoration,
          decorationColor: style.decorationColor,
          decorationStyle: style.decorationStyle,
          decorationThickness: style.decorationThickness,
          debugLabel: style.debugLabel,
          overflow: style.overflow,
        );

  _AppTextStyle get black => _AppTextStyle(
        copyWith(color: AppColors.black),
      );
  _AppTextStyle get white => _AppTextStyle(
        copyWith(color: AppColors.white),
      );
  _AppTextStyle get mainColor => _AppTextStyle(
        copyWith(color: AppColors.mainColor),
      );
  _AppTextStyle get accentColor => _AppTextStyle(
        copyWith(color: AppColors.accentColor),
      );
  _AppTextStyle get gray => _AppTextStyle(
        copyWith(color: AppColors.gray),
      );
  _AppTextStyle get bold => _AppTextStyle(
        copyWith(fontWeight: FontWeight.bold),
      );
  _AppTextStyle get underline => _AppTextStyle(
        copyWith(decoration: TextDecoration.underline),
      );
}

class _AppTextStyleSet extends _AppTextStyle {
  _AppTextStyleSet({
    required TextStyle large,
    required TextStyle medium,
    required TextStyle small,
  })  : large = _AppTextStyle(large),
        small = _AppTextStyle(small),
        super(medium);

  final _AppTextStyle large;
  final _AppTextStyle small;
}
