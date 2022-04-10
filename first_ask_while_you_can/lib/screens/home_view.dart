import 'package:first_ask_while_you_can/views/phone_view.dart';
import 'package:first_ask_while_you_can/views/web_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (_, constrains) {
        if (constrains.maxWidth <= 720) {
          return const PhoneView();
        } else {
          return const WebView();
        }
      }),
    );
  }
}
