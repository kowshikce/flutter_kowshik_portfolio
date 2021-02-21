import 'package:flutter/material.dart';

class ExperienceScreen extends StatefulWidget {
  @override
  _ExperienceScreenState createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
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
                  "Work Skills",
                  style: const TextStyle(
                      fontSize: 35.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "GREAT DESIGN MATTERS",
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Analysis, Research and Critical Thinking are the key aspects for making a good design, great design are best known as test driven design , it’s must for any developer making apps, websites or graphics and delivering great design for my client is my first priority.",
                  style: const TextStyle(
                      fontSize: 15.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "01. DIGITAL",
                  style: const TextStyle(
                      fontSize: 25.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.start,
                ),
                Divider(
                  endIndent: 300,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "websites and apps are built with modern look and feel that gives unique feeling of navigation and intuitive browsing.",
                  style: const TextStyle(
                      fontSize: 15.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "02. BRANDING.",
                  style: const TextStyle(
                      fontSize: 25.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.start,
                ),
                Divider(
                  endIndent: 250,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "5 year’s of hands on experience in branding",
                  style: const TextStyle(
                      fontSize: 15.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "03. MARKETING.",
                  style: const TextStyle(
                      fontSize: 25.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.start,
                ),
                Divider(
                  endIndent: 250,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Have worked with a various companies for marking with 4 year’s of experience in this field makes me expert.",
                  style: const TextStyle(
                      fontSize: 15.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 30,
                ),
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.green,
                                width: 5,
                                style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Center(child: Text("Happy \nClient's")),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.green,
                                width: 5,
                                style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Center(child: Text("Quality \nService")),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.green,
                                width: 5,
                                style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Center(child: Text("On \nTime")),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.green,
                                width: 5,
                                style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Center(child: Text("Great \nDesign")),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ));
  }
}
