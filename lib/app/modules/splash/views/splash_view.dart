import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        builder: (controller) {
      return Scaffold(
        body: Center(
          child: Image.asset("assets/images/mainLogo.png"),
        ).paddingSymmetric(horizontal: 77.sp),
      );
    });
  }
}
