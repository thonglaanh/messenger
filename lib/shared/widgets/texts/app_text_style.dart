import 'package:flutter/material.dart';
import 'package:messenger/constants/colors.dart';

double? _getLineHeightByFontSize(double? fontSize) {
  if (fontSize == null) return null;
  switch (fontSize.toInt()) {
    case 12:
      return 18 / fontSize;
    case 14:
      return 20 / fontSize;
    case 16:
      return 24 / fontSize;
    case 18:
      return 28 / fontSize;
    case 20:
      return 30 / fontSize;
    default:
      return null;
  }
}

class AppTextStyle extends TextStyle {
  AppTextStyle({
    super.fontSize = 14,
    super.color = ColorConstants.gray900,
    super.fontWeight = FontWeight.w400,
    super.fontStyle = FontStyle.normal,
    super.decoration,
    super.decorationColor,
  }) : super(
          height: _getLineHeightByFontSize(fontSize),
        );
}
