import 'package:formula_app/controllers/network_controller.dart';
import 'package:get/get.dart';

class DependencyInjector {
  static void inject() {
    Get.put<NetworkController>(NetworkController(), permanent: true);
  }
}
