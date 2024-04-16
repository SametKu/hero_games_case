import 'package:flutter/widgets.dart';
import 'package:hero_games/core/states/app_settings.dart';
import 'package:hero_games/product/init/navigation/navigation_enums.dart';
import 'package:hero_games/views/doctor_detail/view/doctor_detail_view.dart';
import 'package:hero_games/views/login/view/login_view.dart';
import 'package:hero_games/views/splash_view/view/splash_view.dart';
import 'package:page_transition/page_transition.dart';

class NavigationRoute {
  Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (NavigationEnums.deafult.normalValue(routeSettings.name)) {
      case NavigationEnums.deafult:
        return _normalNavigate(const SplashView());
      case NavigationEnums.login:
        return _normalNavigate(const LoginView());
      case NavigationEnums.doctorDetail:
        return _normalNavigate(const DoctorDetail());
      default:
        throw Exception('$this not found');
    }
  }

  PageTransition _normalNavigate(Widget widget) {
    return PageTransition(
        child: widget,
        type: AppSettings.instance.pageTransitionType,
        duration: const Duration(milliseconds: 200));
  }
}
