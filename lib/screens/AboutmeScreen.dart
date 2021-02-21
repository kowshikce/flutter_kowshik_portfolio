import 'package:flutter/material.dart';
import 'package:flip_panel/flip_panel.dart';
import 'package:marquee_widget/marquee_widget.dart';

class AboutMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlipClock.simple(
              startTime: DateTime.now(),
              digitColor: Colors.white,
              backgroundColor: Colors.black,
              digitSize: 48.0,
              borderRadius: BorderRadius.all(Radius.circular(3.0)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: ClipRRect(
                child: Stack(children: [
                  Image.asset(
                    "assets/images/kowshik.jpg",
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black54),
                      child: Text(
                        "App And Web Expert",
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: Colors.amber),
                      ),
                    ),
                    top: 0,
                    left: deviceWidth / 4,
                  ),
                  Positioned(
                    child: Container(
                      width: deviceWidth,
                      decoration: BoxDecoration(color: Colors.black54),
                      child: Marquee(
                        child: Text(
                          "Flutter & Django Apps Developer | Laravel + MariaDB + Vue.js | React + Express + MongoDB | Wordpress + Woocommerce + SEO",
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              color: Colors.amber),
                        ),
                      ),
                    ),
                    bottom: 10,
                    right: 0,
                  ),
                ]),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
                leading: Icon(
                  Icons.crop,
                  size: 30,
                  color: Colors.white,
                ),
                title: Text("About.me",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                subtitle: Container(
                  child: Column(
                    children: [
                      Divider(),
                      Text(
                        "INSPIRED BY DIFFERENCE                                                                                      ",
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      Divider(),
                      Text(
                        "HEY , I AM KOWSHIK GUNGULY, I AM A WEB DESIGNER AND DEVELOPER ALSO INTERESTED IN ANDROID-IOS  UI DESIGN AND DEVELOPMENT.",
                        style: const TextStyle(
                            color: Colors.green, fontStyle: FontStyle.italic),
                      ),
                      Divider(),
                      Text(
                          "Client Satisfaction is my first Priority. My Spaciality is my Excellence .I have some extra skills. e.g. Creative Graphic Design, Android App Development, Software Development etc. Core Skills: WordPress, WordPress theme Customization, WordPress plugin installation, WordPress Error fixes, Web Design, App Design, Website Development, Android App Development, Graphic Design, Office Application Expert."),
                    ],
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            FlatButton.icon(
                color: Color(0xFFf4ad24),
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                label: Text(
                  "  Home  ",
                  style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      fontSize: 28),
                )),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
