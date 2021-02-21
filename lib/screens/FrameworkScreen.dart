import 'package:flutter/material.dart';

class FrameworkScreen extends StatefulWidget {
  @override
  _FrameworkScreenState createState() => _FrameworkScreenState();
}

class _FrameworkScreenState extends State<FrameworkScreen> {
  final _frameworks = [
    {"name": "Android SDK", "url": "assets/images/icons/android.png"},
    {"name": "Angular", "url": "assets/images/icons/angular.png"},
    {"name": "Django", "url": "assets/images/icons/django.png"},
    {"name": "express", "url": "assets/images/icons/express.png"},
    {"name": "Flutter SDK", "url": "assets/images/icons/flutter.png"},
    {"name": "MongoDB", "url": "assets/images/icons/mongodb.png"},
    {"name": "React", "url": "assets/images/icons/react.png"},
    {"name": "tensorflow", "url": "assets/images/icons/tensorflow.png"},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18))),
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: ListView(
          children: [
            Divider(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Framework Used",
              style: const TextStyle(
                  fontSize: 40.0,
                  color: Color(0xffCCD6F6),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Do Have Extensive Experience In Those Frameworks.",
              style: const TextStyle(
                  fontSize: 20.0,
                  color: Color(0xffCCD6F6),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "i have 3 year’s of experience in those framework, which give me a solid ground from which i can work for any of my client demanding prior experience or solid work including those frameworks.",
              style: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.green,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10),
              itemBuilder: (ctx, index) => GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(
                    _frameworks[index]["url"],
                    fit: BoxFit.cover,
                  ),
                ),
                footer: Container(
                  color: Colors.black87,
                  child: Text(
                    _frameworks[index]["name"],
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 28.0,
                        color: Colors.white),
                  ),
                ),
              ),
              itemCount: _frameworks.length,
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
    );
  }
}
