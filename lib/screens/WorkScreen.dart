import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/EducationQualificationSteps.dart';
import '../widgets/EducationSteps.dart';
import '../widgets/TechnicalQualificationStep.dart';

class WorkScreen extends StatefulWidget {
  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18), topRight: Radius.circular(18))),
        child: ListView(
          children: [
            Center(
                child: Text(
              "Technical Qualification",
              style: const TextStyle(
                  fontSize: 20.0,
                  color: Color(0xffCCD6F6),
                  fontWeight: FontWeight.w700),
            )),
            Divider(),
            EducationSteps(),
            Divider(),
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
              "Educational Qualification",
              style: const TextStyle(
                  fontSize: 20.0,
                  color: Color(0xffCCD6F6),
                  fontWeight: FontWeight.w700),
            )),
            SizedBox(
              height: 25,
            ),
            Divider(),
            TechnicalQualificationStep(),
          ],
        ));
  }
}
