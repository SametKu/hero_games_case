import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:page_transition/page_transition.dart';

class AppSettings extends GetxController {
  static AppSettings get instance => Get.find<AppSettings>();

  PageTransitionType pageTransitionType = PageTransitionType.rightToLeft;
  String? currentPage;
  int pageStackCount = 1;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  BuildContext? get context => navigatorKey.currentContext;
}
