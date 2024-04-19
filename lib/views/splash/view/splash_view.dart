import 'package:flutter/material.dart';
import 'package:hero_games/core/extensions/navigation_enums.dart';
import 'package:hero_games/core/states/app_fonts.dart';
import 'package:hero_games/core/states/global_states.dart';
import 'package:hero_games/product/init/navigation/navigation_enums.dart';
import 'package:hero_games/views/widgets/custom_page_design.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    appFonts = AppFonts.init(context);
    return BaseDesign(
      midTitle: 'Hello',
      child: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  NavigationEnums.onboarding.navigeToPage();
                },
                child: const Text("OnBoarding")),
          )
        ],
      ),
    );
  }
}
