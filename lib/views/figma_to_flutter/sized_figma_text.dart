import 'package:flutter/material.dart';
import 'package:hero_games/core/extensions/text.dart';
import 'package:hero_games/core/states/global_states.dart';

class SFigmaText extends StatelessWidget {
  const SFigmaText(this.text,
      {super.key,
      required this.height,
      this.width,
      this.style,
      this.textAlign,
      this.overflow = TextOverflow.visible,
      this.maxLines,
      this.strutStyle,
      this.textDirection,
      this.locale,
      this.softWrap,
      this.textScaleFactor,
      this.semanticsLabel,
      this.textWidthBasis,
      this.textHeightBehavior,
      this.selectionColor,
      this.alignment = Alignment.centerLeft,
      this.underline = false});
  final double height;
  final double? width;
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final double? textScaleFactor;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;
  final AlignmentGeometry alignment;
  final bool underline;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: appFonts.px(height, Axis.vertical),
      width: width != null ? appFonts.px(width!, Axis.horizontal) : null,
      child: Align(
          alignment: alignment,
          child: Text(
            text,
            style: style,
            textAlign: textAlign,
            softWrap: softWrap,
            maxLines: maxLines,
            overflow: overflow,
            strutStyle: strutStyle,
            textDirection: textDirection,
            locale: locale,
            textScaleFactor: textScaleFactor,
            semanticsLabel: semanticsLabel,
            textWidthBasis: textWidthBasis,
            textHeightBehavior: textHeightBehavior,
            selectionColor: selectionColor,
          ).underline(ignore: !underline)),
    );
  }
}
