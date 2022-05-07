import 'package:get/get.dart';
import 'package:localization_with_getx/controllers/home_controller.dart';
import 'package:localization_with_getx/views/home/home.dart';

List<GetPage> pages = [
  GetPage(
      name: '/home',
      page: () => HomePage(),
      binding: BindingsBuilder(() {
        Get.put(HomeController());
      })),
];
