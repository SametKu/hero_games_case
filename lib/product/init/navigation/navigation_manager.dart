import 'package:hero_games/core/states/app_settings.dart';
import 'package:page_transition/page_transition.dart';

abstract class INavigationServices {
  Future<Object?> navigateToPage<T>({required String path, Object? data});
}

class NavigationService implements INavigationServices {
  @override
  Future<Object?> navigateToPage<T>(
      {required String path,
      Object? data,
      PageTransitionType type = PageTransitionType.rightToLeft,
      dynamic Function()? poppedBack}) async {
    AppSettings.instance.pageTransitionType = type;
    var exPage = AppSettings.instance.currentPage;
    AppSettings.instance.pageStackCount += 1;
    AppSettings.instance.currentPage = path;
    return await AppSettings.instance.navigatorKey.currentState
        ?.pushNamed(path, arguments: data)
        .then((value) {
      AppSettings.instance.currentPage = exPage;
      AppSettings.instance.pageStackCount -= 1;
      if (poppedBack != null) poppedBack();
      return value;
    });
  }
}
