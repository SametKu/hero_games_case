import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hero_games/core/constants/image_paths.dart';
import 'package:hero_games/core/states/app_fonts.dart';
import 'package:hero_games/core/states/global_states.dart';
import 'package:hero_games/views/splash_view/model/splash_view_model.dart';
import 'package:hero_games/views/widgets/custom_page_design.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  var model = SplashViewModel();
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    model.goOnbardingPage();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    appFonts = AppFonts.init(context);
    return BaseDesign(
      value: SystemUiOverlayStyle.light,
      noBackBtn: true,
      topPadding: 0,
      child: Column(
        children: [
          Image.asset(
            ImagePaths.splashImage,
            fit: BoxFit.fill,
            height: appFonts.px(812, Axis.vertical),
          ),
        ],
      ),
    );
  }
}
