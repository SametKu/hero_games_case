import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hero_games/core/constants/color_constants.dart';

class AppFonts {
  late double _appHeight, _appWidth;

  // ignore: prefer_final_fields
  double _figmaHeight = 812, _figmaWidth = 375;

  Size get size => Size(_appWidth, _appHeight);

  void _setSize(Size size) {
    _appHeight = size.height;
    _appWidth = size.width;
  }

  static AppFonts get instance => Get.find<AppFonts>();

  static AppFonts init(BuildContext context) {
    var state = Get.put(AppFonts());
    state._setSize(MediaQuery.of(context).size);
    return state;
  }

  TextStyle style(
      {Color color = ColorConstants.colorBackground,
      Color? decorationColor,
      List<Shadow>? shadows,
      double fontSize = 16,
      FontWeight fontWeight = FontWeight.w600,
      String fontFamily = 'Inter',
      TextDecoration? decoration,
      double? height,
      TextStyle? textStyle,
      double? letterSpacing}) {
    return GoogleFonts.getFont(fontFamily,
        fontSize: textStylePx(fontSize),
        color: color,
        height: height,
        letterSpacing: letterSpacing,
        shadows: shadows,
        decorationColor: decorationColor,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle);
  }

  double textStylePx(double px) {
    return _appHeight * (px / _figmaHeight);
  }

  double px(double px, Axis axisDirection) {
    return axisDirection == Axis.horizontal
        ? _appWidth * (px / _figmaWidth)
        : _appHeight * (px / _figmaHeight);
  }

  Widget spacer(double px, Axis axisDirection) {
    return SizedBox(
      width:
          axisDirection == Axis.horizontal ? _appWidth * (px / _figmaWidth) : 1,
      height: axisDirection == Axis.vertical
          ? _appHeight * (px / _figmaHeight)
          : null,
    );
  }

  EdgeInsetsGeometry paddingOnly(
          {double left = 0,
          double right = 0,
          double top = 0,
          double bottom = 0}) =>
      EdgeInsets.only(
          left: px(left, Axis.horizontal),
          right: px(right, Axis.horizontal),
          top: px(top, Axis.vertical),
          bottom: px(bottom, Axis.vertical));

  EdgeInsetsGeometry paddingAll(double value) => EdgeInsets.only(
      left: px(value, Axis.horizontal),
      right: px(value, Axis.horizontal),
      top: px(value, Axis.vertical),
      bottom: px(value, Axis.vertical));

  EdgeInsetsGeometry paddingSymetric(
          {double vertical = 0, double horizontal = 0}) =>
      EdgeInsets.symmetric(
          horizontal: px(horizontal, Axis.horizontal),
          vertical: px(vertical, Axis.vertical));
}
