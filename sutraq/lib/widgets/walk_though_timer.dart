import 'package:flutter/material.dart';

class Timer extends StatelessWidget {
  const Timer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          alignment: Alignment.bottomLeft,
          height: 18,
          width: 54,
          decoration: BoxDecoration(
            color: Color(0xff007AFF),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Center(
            child: Text("9:41",
                style: TextStyle(
                  fontFamily: 'net-sf-pro',
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                )),
          ),
        ),
      ),
    );
  }
}
