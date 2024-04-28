import 'package:flutter/material.dart';
import 'package:hero_games/core/constants/color_constants.dart';
import 'package:hero_games/core/states/global_states.dart';
import 'package:hero_games/views/widgets/figma_to_flutter/figma_container.dart';
import 'package:hero_games/views/widgets/figma_to_flutter/sized_figma_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(this.text,
      {super.key,
      this.color,
      this.radius = 24,
      required this.onPressed,
      this.boxShape = BoxShape.rectangle,
      this.horizontalPadding = 16});
  final Color? color;
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
            color: color,
            borderRadius: BorderRadius.circular(radius),
            shape: boxShape),
        child: TextButton(
            onPressed: onPressed,
            child: SFigmaText(
              alignment: Alignment.center,
              text,
              height: 24,
              style: appFonts.style(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: ColorConstants.colorBackground),
            )),
      ),
    );
  }
}
