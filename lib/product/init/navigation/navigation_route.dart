import 'package:flutter/material.dart';
import 'package:hero_games/core/states/app_settings.dart';
import 'package:hero_games/product/init/navigation/navigation_enums.dart';
import 'package:hero_games/views/login/view/login_view.dart';
import 'package:page_transition/page_transition.dart';

class NavigationRoute {
  Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (NavigationEnums.deafult.normalValue(routeSettings.name)) {
      case NavigationEnums.deafult:
        return _normalNavigate(const LoginView());
      case NavigationEnums.login:
        return _normalNavigate(const LoginView());
      case NavigationEnums.home:
        return _normalNavigate(const LoginView());
      case NavigationEnums.register:
        return _normalNavigate(const LoginView());
      default:
        throw Exception('$this not found');
    }
  }

  PageTransition _normalNavigate(Widget widget) {
    return PageTransition(
        type: AppSettings.instance.pageTransitionType,
        child: widget,
        duration: const Duration(milliseconds: 200));
  }
}
