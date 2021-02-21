import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LinearProgress extends StatelessWidget {
  final String frameworkName;
  final String percentage;
  final double actualPercent;

  LinearProgress({this.frameworkName, this.percentage, this.actualPercent});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: 0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              frameworkName,
              style: const TextStyle(
                  fontSize: 20.0,
                  color: Color(0xffCCD6F6),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5,
            ),
            LinearPercentIndicator(
              width: size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: actualPercent,
              center: Text(percentage),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Color(0xFFf4ad24),
            )
          ],
        ),
      ),
    );
  }
}
