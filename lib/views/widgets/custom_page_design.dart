import 'package:flutter/material.dart';

class BaseDesign extends StatelessWidget {
  const BaseDesign(
      {super.key,
      this.backgroundColor,
      this.topRightIcon,
      this.midTitle,
      this.noBackBtn = false,
      this.topPadding = 20,
      this.backBtnPressed,
      this.padding});
  final Color? backgroundColor;
  final Widget? topRightIcon;
  final String? midTitle;
  final bool noBackBtn;
  final double topPadding;
  final EdgeInsetsGeometry? padding;
  final Function()? backBtnPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: topPadding,
          ),
          Padding(
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(
              width: double.infinity,
              child: Stack(
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
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          midTitle!,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  if (topRightIcon != null)
                    Align(
                        alignment: Alignment.centerRight, child: topRightIcon!),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
