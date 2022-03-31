import 'package:first_ask_while_you_can/screens/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Color.fromARGB(255, 248, 4, 4),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 243, 246, 246),
          side: const BorderSide(
              color: Color.fromARGB(255, 79, 124, 135), width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        )),
      ),
      home: const HomeView(),
    );
  }
}
