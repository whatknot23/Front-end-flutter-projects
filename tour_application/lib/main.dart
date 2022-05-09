import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:tour_application/constants/color_const.dart';
import 'package:tour_application/constants/string_const.dart';
import 'package:tour_application/routes/route.dart';
import 'package:tour_application/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(200, 500),
      
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
          initialRoute: splash,
          getPages: getPages,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.scaffoldColor,
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.poppinsTextTheme(
                Theme.of(context).textTheme.apply()),
          ),
        );
      },
    );
  }
}
