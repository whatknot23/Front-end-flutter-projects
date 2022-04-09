import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sutraq/data/walk_through_data.dart';

import '../widgets/walk_though_timer.dart';

class WalkThrough extends StatefulWidget {
  WalkThrough({Key? key}) : super(key: key);

  @override
  State<WalkThrough> createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: PageView.builder(
              onPageChanged: (_) => setState(() {
                    currentIndex++;
                  }),
              itemCount: details.length,
              itemBuilder: (_, index) {
                return SafeArea(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Timer(),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(details[index].backgroundUrl),
                                alignment: Alignment.topRight,
                                fit: BoxFit.scaleDown,
                                colorFilter: const ColorFilter.mode(
                                    Color(0xffF5F7FC), BlendMode.modulate))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 50, horizontal: 30),
                          child: Image.asset(
                            details[index].imgUrl,
                            height: size.height / 3.5,
                            width: size.width,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            3,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 15, right: 2, left: 2),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: currentIndex == index
                                          ? const Color(0xffF6F6F6)
                                          : const Color(0xff62BB46),
                                    ),
                                    height: 5,
                                    width: 5,
                                  ),
                                )),
                      ),
                      Expanded(
                          child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xff62BB46),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            )),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height / 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                details[index].title,
                                style: const TextStyle(
                                    fontFamily: 'gelion',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 27),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height / 120),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  details[index].subTitle,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontFamily: 'circular-std',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height / 15),
                              child: Container(
                                color: Color(0xff051F0E),
                                height: size.height / 13,
                                width: size.width / 1.2,
                                child: const Center(
                                  child: Text(
                                    "LOGIN",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'circular-std',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height / 40),
                              child: const Text(
                                "TRY SUTRAQ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'circular-std',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
