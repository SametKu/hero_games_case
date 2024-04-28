import 'package:flutter/material.dart';
import 'package:hero_games/core/states/global_states.dart';

class FigmaBox extends StatelessWidget {
  const FigmaBox({super.key, this.child, this.height, this.width});
  final double? height, width;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: key,
      width: width != null ? appFonts.px(width!, Axis.horizontal) : null,
      height: height != null ? appFonts.px(height!, Axis.vertical) : null,
      child: child,
    );
  }
}
