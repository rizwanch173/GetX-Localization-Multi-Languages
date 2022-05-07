import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization_with_getx/controllers/home_controller.dart';
import 'package:localization_with_getx/views/home/setting.dart';
import '../../colors.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Obx(() {
      return Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Get.to(const SettingsPage());
                  },
                  icon: const Icon(Icons.settings),
                ),
                Column(
                  children: [
                    Text("MEN'S_ORIGINAL".tr,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16)),
                    Text("Smith_Shoes".tr,
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24))
                  ],
                ),
                Image.asset(
                  "images/bag_button.png",
                  height: 34,
                  width: 34,
                ),
              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                Image.asset(homeController.imagePath[homeController.colors
                    .indexOf(homeController.selectedColor.value)]),
                Positioned(
                    bottom: 10,
                    right: 20,
                    child: FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: () {
                        homeController.isFavourite.value =
                            !homeController.isFavourite.value;
                      },
                      child: Image.asset(
                        homeController.isFavourite.value
                            ? "images/heart_icon.png"
                            : "images/heart_icon_disabled.png",
                        height: 34,
                        width: 34,
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In "
                    "rutrum at ex non eleifend. Aenean sed eros a purus "
                    "gravida scelerisque id in orci. Mauris elementum id "
                    "nibh et dapibus. Maecenas lacinia volutpat magna",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: AppColor.bodyColor, fontSize: 14, height: 1.5),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Color".tr,
                                style: TextStyle(
                                    color: AppColor.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            const SizedBox(height: 10),
                            Row(
                              children: List.generate(
                                  4,
                                  (index) => GestureDetector(
                                        onTap: () {
                                          print("index $index clicked");

                                          homeController.selectedColor.value =
                                              homeController.colors[index];
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          height: 34,
                                          width: 34,
                                          child: homeController.selectedColor ==
                                                  homeController.colors[index]
                                              ? Image.asset(
                                                  "images/checker.png")
                                              : const SizedBox(),
                                          decoration: BoxDecoration(
                                              color:
                                                  homeController.colors[index],
                                              borderRadius:
                                                  BorderRadius.circular(17)),
                                        ),
                                      )),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Size".tr,
                                style: TextStyle(
                                    color: AppColor.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            const SizedBox(height: 10),
                            Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 10),
                                color: AppColor.bodyColor.withOpacity(0.10),
                                child: const Text(
                                  "10.2",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      "add".tr,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    )),
                const Text(r"$95",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28))
              ],
            ),
          )
        ],
      );
    })));
  }
}
