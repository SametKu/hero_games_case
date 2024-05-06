import 'package:hero_games/core/extensions/navigation_enums.dart';
import 'package:hero_games/product/init/navigation/navigation_enums.dart';
import 'package:mobx/mobx.dart';

part 'splash_view_model.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase with Store {
  Future<void> goOnbardingPage() async {
    await Future.delayed(
      const Duration(seconds: 5),
      () => NavigationEnums.onBoarding.navigateToPageReplacement(),
    );
  }
}
