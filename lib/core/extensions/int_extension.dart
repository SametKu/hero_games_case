import 'package:flutter/material.dart';
import 'package:hero_games/core/states/global_states.dart';
import 'package:hero_games/views/figma_to_flutter/figma_box.dart';

extension IntExt on int {
  double get pxv => appFonts.px(toDouble(), Axis.vertical);
  double get pxh => appFonts.px(toDouble(), Axis.horizontal);
  Widget get spacerV => FigmaBox(
        height: toDouble(),
      );
  Widget get spacerH => FigmaBox(
        width: toDouble(),
      );
}
