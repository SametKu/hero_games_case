import 'package:flutter/material.dart';
import 'package:hero_games/core/constants/color_constants.dart';
import 'package:hero_games/core/states/global_states.dart';

extension TextExt on Text {
  Widget underline({bool ignore = false}) => ignore
      ? this
      : Container(
          padding: appFonts.paddingOnly(bottom: 0),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 1,
                      color: style?.color ?? ColorConstants.colorBackground))),
          child: this,
        );
}
