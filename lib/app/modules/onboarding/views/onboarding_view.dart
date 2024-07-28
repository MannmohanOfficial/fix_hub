import 'package:fix_hub/constants/color_constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
        builder: (introController) {
      return Scaffold(
        body: PageView.builder(
          controller: introController.pageController,
          itemCount: introController.introItems.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 357.0,
                    child: Image.asset(introController.introItems[index].image).paddingOnly(top: 168.0),
                ),
                ContentText(title: introController.introItems[index].title).paddingOnly(top: 105)
              ],
            );
          },
        ),
      );
    });
  }
}

class ContentText extends StatelessWidget {
  final String title;
  const ContentText({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.manrope(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: FhColor.colorBlack
      ),
    );
  }
}
