import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/CustomStep.dart';

class EducationSteps extends StatelessWidget {
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
          {
            'color': Color(0xFF64FFDA),
            'background': Colors.indigo,
            'label': 'G',
            'content': Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Learning And Earning Development Project Wordpress | React + Django | Vue.js + Laravel",
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "I am currently pursuing Bachelor's Degree in Computer Science And Engineering \nat Northern University Bangladesh",
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
                    "assets/images/tiles/django_react.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "2018 - present ",
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xffCCD6f6).withOpacity(0.5),
                      fontWeight: FontWeight.w700),
                )
              ],
            )
          },
          {
            'color': Color(0xFF64FFDA),
            'background': Colors.indigo,
            'label': 'H',
            'content': Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Freelancer - Flutter | Dart Mobile App Developer | UI - UX Designer",
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "I am currently pursuing Bachelor's Degree in Computer Science And Engineering \nat Northern University Bangladesh",
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
                    "assets/images/tiles/flutter_ui_ux.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "2018 - present ",
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xffCCD6f6).withOpacity(0.5),
                      fontWeight: FontWeight.w700),
                )
              ],
            )
          },
          {
            'color': Color(0xFF64FFDA),
            'background': Colors.indigo,
            'label': 'F',
            'content': Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Laravel + Vue.js Development E-commerce BootCamp",
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "I am currently pursuing Bachelor's Degree in Computer Science And Engineering \nat Northern University Bangladesh",
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
                    "assets/images/tiles/laravel.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "2018 - present ",
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xffCCD6f6).withOpacity(0.5),
                      fontWeight: FontWeight.w700),
                )
              ],
            )
          },
        ],
      ),
    );
  }
}
