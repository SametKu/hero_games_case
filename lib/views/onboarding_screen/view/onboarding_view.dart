import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hero_games/core/constants/color_constants.dart';
import 'package:hero_games/core/states/global_states.dart';
import 'package:hero_games/views/figma_to_flutter/figma_box.dart';
import 'package:hero_games/views/figma_to_flutter/sized_figma_text.dart';
import 'package:hero_games/views/onboarding_screen/model/onboarding_view_model.dart';
import 'package:hero_games/views/onboarding_screen/widget/onboarding_widget.dart';
import 'package:hero_games/views/widgets/custom_button.dart';
import 'package:hero_games/views/widgets/custom_page_design.dart';
import 'package:hero_games/views/widgets/page_index_view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var model = OnBoardingViewModel();
  @override
  void initState() {
    model.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseDesign(
        topPadding: 0,
        noBackBtn: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FigmaBox(
              //color: Colors.red,
              height: 670,
              child: PageView(
                controller: model.pageController,
                children: [
                  for (var item in model.items) OnboardingViewItem(item: item)
                ],
              ),
            ),
            Observer(builder: (context) {
              return CustomButton(
                horizontalPadding: 36,
                'Next',
                onPressed: () {
                  model.nextPage();
                },
                color: ColorConstants.btnColor,
              );
            }),
            appFonts.spacer(25, Axis.vertical),
            Observer(builder: (context) {
              return PageIndexView(
                  pageIndex: model.pageIndex, totalCount: model.items.length);
            }),
            FigmaBox(
              width: 60,
              child: TextButton(
                  onPressed: () {
                    model.jumpToPage();
                  },
                  child: SFigmaText(
                    alignment: Alignment.center,
                    height: 21,
                    "Skip",
                    style: appFonts.style(
                        color: ColorConstants.colorSecBtn,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  )),
            )
          ],
        ));
  }
}
