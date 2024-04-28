import 'package:flutter/material.dart';
import 'package:hero_games/core/constants/color_constants.dart';
import 'package:hero_games/core/states/global_states.dart';
import 'package:hero_games/views/figma_to_flutter/figma_container.dart';

class PageIndexView extends StatelessWidget {
  const PageIndexView(
      {super.key, required this.pageIndex, required this.totalCount});
  final int pageIndex, totalCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int index = 0; index < totalCount; index++)
          Padding(
            padding: appFonts.paddingSymetric(horizontal: 3),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: FigmaContainer(
                width: index == pageIndex
                    ? appFonts.px(21, Axis.horizontal)
                    : appFonts.px(8, Axis.horizontal),
                height: 8,
                color: index == pageIndex
                    ? ColorConstants.indexColor
                    : ColorConstants.passiveColor,
              ),
            ),
          )
      ],
    );
  }
}
