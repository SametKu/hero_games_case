import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

class AppSettings extends GetxController {
  String? currentPage;
  int pageStackCount = 1;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  PageTransitionType pageTransitionType = PageTransitionType.rightToLeft;
  static AppSettings get instance => Get.find<AppSettings>();
  BuildContext? get context => navigatorKey.currentContext;
}
