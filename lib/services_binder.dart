import 'package:get/instance_manager.dart';
import 'package:localization_with_getx/controllers/settings_controller.dart';

class ServicesBinder extends Bindings {
  @override
  void dependencies() {
    Get.put<SettingsController>(SettingsController(), permanent: true);
  }
}
