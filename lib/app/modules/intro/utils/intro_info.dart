import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';
import '../controllers/intro_controller.dart';

class IntroInfo {
  final String image, title, content;

  IntroInfo(this.image, this.title, this.content);
}

class CustomContent extends StatelessWidget {
  final String content;
  const CustomContent({
    super.key, required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
          fontSize: 16.sp,
          fontWeight: FontWeight.normal,
        color: FhColors.fhBlack,
      ),
    );
  }
}

class CustomHeader extends StatelessWidget {
  final String title;
  const CustomHeader({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.manrope(
        fontWeight: FontWeight.w600,
        fontSize: 26.sp,
        color: FhColors.fhBlack,
      ),
    );
  }
}

class DotWidget extends StatelessWidget {
  final int index;
  const DotWidget({
    super.key, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final introController = Get.put(IntroController());
    return Container(
      height: 7.sp,
      width: introController.currentIndex.value == index ? 32.sp : 10.sp,
      margin: EdgeInsets.only(right: 5.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: introController.currentIndex.value == index ? FhColors.fhYellow : FhColors.fhGrey,
      ),
    );
  }
}