import 'package:flutter/material.dart';
import 'package:hero_games/core/constants/color_constants.dart';
import 'package:hero_games/core/states/global_states.dart';
import 'package:hero_games/product/init/extensions/navigation_enum.dart';
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
    return BaseDesign(
      midTitle: 'Ahmet',
      noBackBtn: false,
      backBtnPressed: () {
        NavigationEnums.login.navigationToPage();
      },
      child: Column(children: [
        Text(
          "asd",
          style: appFonts.style(fontSize: 40, color: ColorConstants.colorDark),
        )
      ]),
    );
  }
}
