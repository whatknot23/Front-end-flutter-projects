import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class PhoneView extends StatelessWidget {
  const PhoneView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        color: const Color.fromARGB(255, 243, 243, 243),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                child: Image.asset(
                  'assets/logo.png',
                  color: const Color.fromARGB(255, 14, 70, 80),
                  height: MediaQuery.of(context).size.height / 12,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10),
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  onPressed: () {
                    const url = "https://www.timewell.io/";
                    html.window.open(url, "time well");
                  },
                  child: Text("Record their answer",
                      style: GoogleFonts.sourceSansPro(
                        color: const Color.fromARGB(255, 44, 99, 116),
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Grow Closer to your loved ones\nby asking them this question.",
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            height: 180,
            width: _width / 1.08,
          )
        ]),
      ),
    );
  }
}
