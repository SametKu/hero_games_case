import 'package:flutter/material.dart';
import 'package:hero_games/core/states/global_states.dart';

class FigmaContainer extends StatelessWidget {
  const FigmaContainer(
      {super.key,
      this.height,
      this.width,
      this.decoration,
      this.foregroundDecoration,
      this.alignment,
      this.padding,
      this.color,
      this.constraints,
      this.margin,
      this.transform,
      this.transformAlignment,
      this.child,
      this.clipBehavior = Clip.none});
  final double? height, width;
  final Decoration? decoration, foregroundDecoration;
  final AlignmentGeometry? alignment, transformAlignment;
  final EdgeInsetsGeometry? padding, margin;
  final Color? color;
  final BoxConstraints? constraints;
  final Matrix4? transform;
  final Widget? child;
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      height: height != null && height != double.infinity
          ? appFonts.px(height!, Axis.vertical)
          : height,
      width: width != null && width != double.infinity
          ? appFonts.px(width!, Axis.horizontal)
          : width,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      alignment: alignment,
      padding: padding,
      margin: margin,
      color: color,
      constraints: constraints,
      transform: transform,
      transformAlignment: transformAlignment,
      clipBehavior: clipBehavior,
      child: child,
    );
  }
}
