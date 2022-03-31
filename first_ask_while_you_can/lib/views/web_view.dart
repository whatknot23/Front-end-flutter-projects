import 'package:flutter/material.dart';

class WebView extends StatelessWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset('assets/logo/logo.png',
          height: MediaQuery.of(context).size.height / 8,
          width: MediaQuery.of(context).size.width / 7,
          color: const Color.fromARGB(255, 56, 81, 92)),
    ]);
  }
}
