import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hero_games/core/states/global_states.dart';

class BaseDesign extends StatelessWidget {
  const BaseDesign(
      {super.key,
      this.backgroundColor,
      this.topRightIcon,
      this.midTitle,
      this.noBackBtn = false,
      this.topPadding = 20,
      this.backBtnPressed,
      this.padding,
      required this.child,
      this.value = SystemUiOverlayStyle.dark});
  final Color? backgroundColor;
  final Widget? topRightIcon;
  final String? midTitle;
  final bool noBackBtn;
  final double topPadding;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final SystemUiOverlayStyle value;
  final Function()? backBtnPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: value,
        child: Column(
          children: [
            SizedBox(
              height: appFonts.px(topPadding, Axis.vertical),
            ),
            Padding(
              padding: padding ?? appFonts.paddingSymetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    !noBackBtn
                        ? Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                                onPressed: () {
                                  if (backBtnPressed != null) {
                                    backBtnPressed!();
                                  }
                                },
                                icon: const Icon(Icons.arrow_back)),
                          )
                        : const SizedBox(),
                    if (midTitle != null)
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          midTitle!,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: "Inter"),
                        ),
                      ),
                    if (topRightIcon != null)
                      Align(
                          alignment: Alignment.centerRight,
                          child: topRightIcon!),
                  ],
                ),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
