import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  runApp(
    ScreenUtilInit(
        designSize: ScreenUtil.defaultSize,
        minTextAdapt: true,
        builder: (context, child) {
        return GetMaterialApp(
          title: "Application",
          initialRoute: AppPages.initial,
          getPages: AppPages.routes,
        );
      }
    ),
  );
}
