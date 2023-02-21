import 'package:flutter/material.dart';
import 'font_manager.dart';
TextStyle _getTextStyle(double fontSize,String fontFamily,FontWeight fontWeight,Color color){
  return TextStyle(fontSize: fontSize,fontFamily: fontFamily,fontWeight:fontWeight,color: color);
}
TextStyle getRegularStyle({double fontSize=FontSize.s10,required Color color}){
  return _getTextStyle(fontSize, FontManager.fontFamily,FontWeightManager.regular,color);
}
TextStyle getIconRegularStyle({double fontSize=FontSize.s8,required Color color}){
  return _getTextStyle(fontSize, FontManager.fontFamily,FontWeightManager.regular,color);
}
TextStyle getButtonRegularStyle({double fontSize=FontSize.s14,required Color color}){
  return _getTextStyle(fontSize, FontManager.fontFamily,FontWeightManager.regular,color);
}
TextStyle getLightStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontManager.fontFamily,FontWeightManager.light,color);
}
TextStyle getBoldStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontManager.fontFamily,FontWeightManager.bold,color);
}
TextStyle getMiniBoldStyle({double fontSize=FontSize.s10,required Color color}){
  return _getTextStyle(fontSize, FontManager.fontFamily,FontWeightManager.bold,color);
}
TextStyle getMediumStyle({double fontSize=FontSize.s16,required Color color}){
  return _getTextStyle(fontSize, FontManager.fontFamily,FontWeightManager.medium,color);
}