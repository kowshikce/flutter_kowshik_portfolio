import 'package:flutter/material.dart';
import '../widgets/LinearProgress.dart';

class SkillScreen extends StatefulWidget {
  @override
  _SkillScreenState createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18), topRight: Radius.circular(18))),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Skills.",
                  style: const TextStyle(
                      fontSize: 40.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "RESULTS DRIVEN DESIGN.",
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Having great skills in many fields are now must for a modern developer, because working on a project requires knowledge or skills on different fields so a good developer must have those requirements to deliver the best quality product and i have the required level of skills to complete any of my client work within the given time. some of my skills are c, java, python and rest are given below.",
                  style: const TextStyle(
                      fontSize: 15.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(),
                LinearProgress(
                  frameworkName: "ANDROID SDK FRAMEWORK",
                  percentage: "90%",
                  actualPercent: 0.9,
                ),
                SizedBox(
                  height: 20,
                ),
                LinearProgress(
                  frameworkName: "NODE.JS FRAMEWORK",
                  percentage: "74%",
                  actualPercent: 0.7,
                ),
                SizedBox(
                  height: 20,
                ),
                LinearProgress(
                  frameworkName: "JAVA JDK",
                  percentage: "94%",
                  actualPercent: 0.94,
                ),
                SizedBox(
                  height: 20,
                ),
                LinearProgress(
                  frameworkName: "PYTHON ",
                  percentage: "70%",
                  actualPercent: 0.7,
                ),
                SizedBox(
                  height: 20,
                ),
                LinearProgress(
                  frameworkName: "DART SDK FRAMEWORK",
                  percentage: "64%",
                  actualPercent: 0.64,
                ),
                SizedBox(
                  height: 20,
                ),
                LinearProgress(
                  frameworkName: "PHP SERVER SIDE",
                  percentage: "70%",
                  actualPercent: 0.7,
                ),
                SizedBox(
                  height: 20,
                ),
                LinearProgress(
                  frameworkName: "C/C++ ",
                  percentage: "95%",
                  actualPercent: 0.95,
                ),
                SizedBox(
                  height: 20,
                ),
                LinearProgress(
                  frameworkName: "PHOTOSHOP CC UI/UX DESIGN",
                  percentage: "50%",
                  actualPercent: 0.5,
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ));
  }
}
