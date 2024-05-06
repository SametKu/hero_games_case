import 'package:flutter/material.dart';
import 'package:hero_games/core/constants/color_constants.dart';
import 'package:hero_games/core/states/global_states.dart';
import 'package:hero_games/views/figma_to_flutter/figma_container.dart';
import 'package:hero_games/views/figma_to_flutter/sized_figma_text.dart';
import 'package:hero_games/views/onboarding_screen/model/onboarding_item.dart';

class OnboardingViewItem extends StatelessWidget {
  const OnboardingViewItem({super.key, required this.item});
  final OnBoardingItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          item.imagePath,
          width: 450,
          fit: BoxFit.cover,
        ),
        appFonts.spacer(30, Axis.vertical),
        SFigmaText(
          alignment: Alignment.center,
          height: 27,
          item.title,
          style: appFonts.style(
              color: ColorConstants.primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 18),
        ),
        appFonts.spacer(20, Axis.vertical),
        Padding(
          padding: appFonts.paddingSymetric(horizontal: 16),
          child: FigmaContainer(
            child: Text(
              textAlign: TextAlign.center,
              item.text,
              style: appFonts.style(
                  color: ColorConstants.primaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
