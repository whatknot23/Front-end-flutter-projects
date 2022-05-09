import 'package:get/get.dart';
import 'package:tour_application/views/on_boarding_screen.dart';
import 'package:tour_application/views/splash_screen.dart';

const String splash = '/splash-screen';
const String onBoarding = '/on-boarding-screen';
// control page route flow

List<GetPage> getPages = [
  GetPage(name: splash, page: () => SplashScreen()),
  GetPage(name: onBoarding, page: () => OnBoardingScreen()),
];
