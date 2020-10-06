import 'package:flutter/material.dart';
import './screens/BackdropScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: MaterialColor(0xFF242424, {}),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BackdropScreen(),
    );
  }
}
