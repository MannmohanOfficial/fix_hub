import 'package:fix_hub/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/intro_controller.dart';
import '../utils/intro_info.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroController>(
        builder: (controller) {
      return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (int index) {
                  controller.updateIndex(index);
                },
                itemCount: controller.introItems.length,
                itemBuilder: (_, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 273.sp,
                          child: Image.asset(controller.introItems[index].image),
                      ),
                      CustomHeader(title: controller.introItems[index].title).paddingOnly(top: 58.sp),
                      CustomContent(content: controller.introItems[index].content).paddingOnly(top: 8.sp)
                    ],
                  ).paddingOnly(top: 120.sp, left: 18.sp, right: 18.sp);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.introItems.length,
                    (index) => DotWidget(index: index)
                ),
            ).paddingOnly(bottom: 60.sp),
            Container(
              height: 56.sp,
              width: Get.width,
              decoration: BoxDecoration(
                  color: FhColors.fhYellow,
                borderRadius: BorderRadius.circular(5)
              ),
              child: TextButton(
                child: Text(
                  controller.currentIndex.value == controller.introItems.length -1 ?
                  "Get Started" : "Next",
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    color: FhColors.fhBlack
                  ),
                ),
                onPressed: (){
                  controller.pageController.nextPage(duration: const Duration(milliseconds: 100), curve: Curves.easeIn);
                },
              ),
            ).paddingOnly(
              left: 18.sp,
              right: 18.sp,
              bottom: 45.sp
            )
          ],
        ),
      );
    });
  }
}