import 'package:complete_advanced_flutter/presentation/resources/font-manager.dart';
import 'package:flutter/material.dart';

TextStyle  _getTextStyle(double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(fontSize: fontSize, fontFamily: fontFamily, fontWeight: fontWeight, );
}

// regular style

TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
}

// light text style

TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.light, color);
}

// bold text style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.Bold, color);
}

// semi-bold text style
TextStyle getSemiBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.SemiBold, color);
}

// medium text style
TextStyle getMediumStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
}