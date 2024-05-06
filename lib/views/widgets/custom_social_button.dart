import 'package:flutter/material.dart';
import 'package:hero_games/core/constants/color_constants.dart';
import 'package:hero_games/core/constants/icon_paths.dart';
import 'package:hero_games/core/states/global_states.dart';
import 'package:hero_games/views/figma_to_flutter/figma_container.dart';
import 'package:hero_games/views/figma_to_flutter/sized_figma_text.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton(this.text,
      {super.key,
      this.bgColor = Colors.transparent,
      this.textColor = ColorConstants.hintTextColor,
      this.radius = 8,
      required this.iconPath,
      required this.onPressed,
      this.boxShape = BoxShape.rectangle,
      this.horizontalPadding = 0});
  final String iconPath;
  final Color bgColor;
  final Color textColor;
  final double radius;
  final double horizontalPadding;
  final BoxShape boxShape;
  final Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: appFonts.paddingSymetric(horizontal: horizontalPadding),
      child: FigmaContainer(
        height: 48,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: ColorConstants.borderColor),
            shape: boxShape),
        child: TextButton(
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(iconPath, width: appFonts.px(20, Axis.horizontal)),
                appFonts.spacer(8, Axis.horizontal),
                SFigmaText(
                  alignment: Alignment.center,
                  text,
                  height: 21,
                  style: appFonts.p14(
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.textColor),
                ),
              ],
            )),
      ),
    );
  }
}
