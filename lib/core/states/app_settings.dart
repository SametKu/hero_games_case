import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:page_transition/page_transition.dart';

class AppSettings extends GetxController {
  static AppSettings get instance => Get.find<AppSettings>();

  PageTransitionType pageTransitionType = PageTransitionType.rightToLeft;
}
