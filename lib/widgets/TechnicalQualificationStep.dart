import 'package:flutter/material.dart';
import '../widgets/CustomStep.dart';

class TechnicalQualificationStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: CustomSteps(
          physics: NeverScrollableScrollPhysics(),
          direction: Axis.vertical,
          size: 20,
          path: {
            'color': Colors.lightBlue.shade200,
            'width': 2.78,
          },
          steps: [
            {
              'color': Color(0xFF64FFDA),
              'background': Colors.indigo,
              'label': 'E',
              'content': Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flutter + Dart Development Winter Bootcamp",
                    style: const TextStyle(
                        fontSize: 20.0,
                        color: Color(0xffCCD6F6),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "The Complete Flutter 2020 Udemy + Dart & Flutter Learning And Earning Development Project Bangladesh",
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xffCCD6F6).withOpacity(0.5),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/tiles/flutter_bootcamp.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Dec 2019 to Mar - 2020",
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xffCCD6f6).withOpacity(0.5),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              )
            },
          ]),
    );
  }
}
