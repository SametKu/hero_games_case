import 'package:hero_games/core/states/app_settings.dart';
import 'package:hero_games/product/init/navigation/navigation_enums.dart';
import 'package:hero_games/product/init/navigation/navigation_manager.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

extension NavigationEnumsExt on NavigationEnums {
  Future<Object?> navigeToPage(
      {Object? data,
      PageTransitionType type = PageTransitionType.rightToLeft,
      dynamic Function()? poppedBack}) async {
    return AppSettings.instance.context!
        .read<NavigationService>()
        .navigateToPage(
            path: rawValue, data: data, poppedBack: poppedBack, type: type);
  }
}
