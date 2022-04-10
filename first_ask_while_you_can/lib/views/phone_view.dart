// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class PhoneView extends StatefulWidget {
  const PhoneView({Key? key}) : super(key: key);

  @override
  State<PhoneView> createState() => _PhoneViewState();
}

class _PhoneViewState extends State<PhoneView> {
  List<String> textList = [
    "Loading",
    "Who do you remember from school?",
    "What are your favourite family vacation memories?",
    "Did you have a best friend, and if so, how did that relationship play out over the course of your life?",
    "How did you enjoy working?",
    "What are some achievements you are most proud of?",
    "What was your favourite childhood holiday tradition?",
    "What do you remember about your parents?",
    "What other family members helped raise you?",
    "Do you still stay in touch with any of your co-workers>",
    "What do you most remember about your school?",
    "What was a memorable birthday?",
    "Do you have any fond memories of your co-workers?",
    "Did you recieve any special rewards?",
    "Do you have memories of what your parents said you when you were like a baby?",
    "What advice would you give young people who are looking for their first job?"
  ];
  int index = 0;
  bool flag = false;
  bool copyText = false;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        height: _height,
        width: _width,
        color: const Color.fromARGB(255, 238, 242, 243),
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
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                          width: 2,
                          color: Color.fromARGB(255, 79, 124, 135),
                          style: BorderStyle.solid),
                      primary: const Color.fromARGB(255, 238, 242, 243)),
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
          Text("Grow Closer to your loved ones\nby asking them this question.",
              style: GoogleFonts.openSans(
                  color: const Color.fromARGB(255, 20, 85, 100),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal)),
          SizedBox(
            height: 50,
            width: 300,
            child: flag == true
                ? Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(
                        top: 16, bottom: 8, left: 6, right: 6),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 79, 124, 135)),
                        onPressed: () {
                          setState(() {
                            copyText = true;
                          });
                        },
                        child: Text(
                          copyText == false ? "Click To Copy" : "Copied",
                          style: const TextStyle(color: Colors.white),
                        )))
                : null,
          ),
          IntrinsicHeight(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  flag = true;
                  if (index == 0) {
                    index++;
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: flag == true
                      ? Border.all(
                          width: 4,
                          color: const Color.fromARGB(255, 53, 84, 91))
                      : null,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: _width / 1.08,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    textList[index],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 79, 124, 135)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15.0),
              ),
              primary: const Color.fromARGB(255, 79, 124, 135),
            ),
            onPressed: () {},
            icon: const Icon(Icons.copy_rounded),
            label: const Padding(
              padding: EdgeInsets.only(top: 12.0, bottom: 12, right: 12),
              child: Text(
                "Copy this question",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              side: const BorderSide(
                  width: 2,
                  color: Color.fromARGB(255, 79, 124, 135),
                  style: BorderStyle.solid),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15.0),
              ),
              primary: const Color.fromARGB(255, 238, 242, 243),
            ),
            onPressed: () {
              setState(() {
                index++;
              });
            },
            icon: const Icon(
              Icons.transfer_within_a_station_sharp,
              color: Color.fromARGB(255, 79, 124, 135),
            ),
            label: const Padding(
              padding: EdgeInsets.only(top: 12.0, bottom: 12, right: 12),
              child: Text(
                "Try another one",
                style: TextStyle(color: Color.fromARGB(255, 79, 124, 135)),
              ),
            ),
          ),
          SizedBox(height: 200),
          Text("Made with love by Nayeem :)",
              style: GoogleFonts.mukta(
                  color: const Color.fromARGB(255, 79, 124, 135))),
        ]),
      ),
    );
  }
}
