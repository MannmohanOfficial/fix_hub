import 'package:fix_hub/app/constants/assets.dart';
import 'package:fix_hub/app/modules/intro/utils/intro_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  List<IntroInfo> introItems = [
    IntroInfo(
        FhImage.splash1,
        "Streamline Your Garage Management Processes",
        "Completely free from your traditional\nmethods of paper-based records",
    ),

    IntroInfo(
      FhImage.splash2,
      "Maintain Your Customer Records",
      "Completely free from your traditional methods of paper-based records",
    ),

    IntroInfo(
      FhImage.splash3,
      "Efficient Tracking of Service Histories",
      "Completely free from your traditional methods of paper-based records",
    ),
  ];
  final pageController = PageController();

  var currentIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void updateIndex(index) {
    currentIndex.value = index;
    update();
  }
}
