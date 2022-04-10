import 'package:get/get.dart';
import 'package:sutraq/screens/dashboard.dart';
import 'package:sutraq/screens/emailSentScreen.dart';
import 'package:sutraq/screens/forgotPasswordScreen.dart';
import 'package:sutraq/screens/loginScreen.dart';
import 'package:sutraq/screens/spash_screen.dart';
import 'package:sutraq/screens/walk_through.dart';

String splashScreen = '/splash-screen';
String walkThroughScreen = '/walk-through';
String loginScreen = '/login';
String forgotPasswordScreen = '/forgot-password';
String emailSentScreen = '/emailSent';
String dashboardScreen = '/dashboard';

List<GetPage> getpages = [
  GetPage(
    name: splashScreen,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: walkThroughScreen,
    page: () => WalkThrough(),
  ),
  GetPage(
    name: loginScreen,
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: forgotPasswordScreen,
    page: () => const ForgotPassword(),
  ),
  GetPage(
    name: emailSentScreen,
    page: () => const EmailSentScreen(),
  ),
  GetPage(
    name: dashboardScreen,
    page: () => const Dashboard(),
  )
];
