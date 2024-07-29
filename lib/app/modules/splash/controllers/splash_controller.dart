import 'package:fix_hub/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    loadIntro();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void loadIntro() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAllNamed(Routes.intro),
    );
  }
}
