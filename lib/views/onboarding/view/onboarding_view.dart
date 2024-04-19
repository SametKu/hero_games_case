import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hero_games/core/states/app_settings.dart';
import 'package:hero_games/views/onboarding/model/onboarding_view_model.dart';
import 'package:hero_games/views/onboarding/widget/onboarding_widget.dart';
import 'package:hero_games/views/widgets/custom_page_design.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    var model = OnboardingViewModel();

    return BaseDesign(
        noBackBtn: true,
        child: Container(
          color: Colors.red,
          width: double.infinity,
          height: 500,
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: model.pageController,
                  children: [
                    for (var item in model.items)
                      OnboardingWidgetView(item: item)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
