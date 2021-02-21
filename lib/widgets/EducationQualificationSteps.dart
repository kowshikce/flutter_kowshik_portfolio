import 'package:flutter/material.dart';

class EductionQualificationSteps extends StatelessWidget {
  final _initialCount = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Stepper(
        physics: NeverScrollableScrollPhysics(),
        currentStep: 0,
        steps: [
          Step(
            isActive: _initialCount > 0,
            title: Text("Qualification Section"),
            content: Column(
              children: [
                Text(
                  "Flutter + Dart Development Winter Bootcamp",
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "The Complete Flutter 2020 Udemy + Dart & Flutter Learning And Earning Development Project Bangladesh",
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xffCCD6F6).withOpacity(0.5),
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Step(
            isActive: _initialCount > 1,
            title: Text("Qualification Section"),
            content: Column(
              children: [
                Text(
                  "Flutter + Dart Development Winter Bootcamp",
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "The Complete Flutter 2020 Udemy + Dart & Flutter Learning And Earning Development Project Bangladesh",
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xffCCD6F6).withOpacity(0.5),
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Step(
            isActive: _initialCount > 2,
            title: Text("Qualification Section"),
            content: Column(
              children: [
                Text(
                  "Flutter + Dart Development Winter Bootcamp",
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "The Complete Flutter 2020 Udemy + Dart & Flutter Learning And Earning Development Project Bangladesh",
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xffCCD6F6).withOpacity(0.5),
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Step(
            isActive: _initialCount > 3,
            title: Text("Qualification Section"),
            content: Column(
              children: [
                Text(
                  "Flutter + Dart Development Winter Bootcamp",
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "The Complete Flutter 2020 Udemy + Dart & Flutter Learning And Earning Development Project Bangladesh",
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xffCCD6F6).withOpacity(0.5),
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Step(
            isActive: _initialCount > 4,
            title: Text("Qualification Section"),
            content: Column(
              children: [
                Text(
                  "Flutter + Dart Development Winter Bootcamp",
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "The Complete Flutter 2020 Udemy + Dart & Flutter Learning And Earning Development Project Bangladesh",
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xffCCD6F6).withOpacity(0.5),
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
