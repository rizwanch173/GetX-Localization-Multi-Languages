import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var colors = [Colors.blue, Colors.green, Colors.yellow, Colors.pink].obs;
  List<String> imagePath = [
    "images/shoe_blue.png",
    "images/shoe_green.png",
    "images/shoe_yellow.png",
    "images/shoe_pink.png"
  ];
  var selectedColor = Colors.blue.obs;
  var isFavourite = false.obs;

  @override
  void onInit() {
    super.onInit();
  }
}
