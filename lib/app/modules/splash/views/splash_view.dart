import 'package:fix_hub/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      assignId: true,
      builder: (logic) {
        return Scaffold(
          body: Center(
            child: SvgPicture.asset(FhImages.mainLogo),
          ),
        );
      },
    );
  }
}
