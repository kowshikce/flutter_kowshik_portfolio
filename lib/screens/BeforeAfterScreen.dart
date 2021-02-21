import 'package:flutter/material.dart';
import 'package:before_after/before_after.dart';

class BeforeAfterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0))),
      child: BeforeAfter(
        beforeImage: Image.asset("assets/images/before.jpg"),
        afterImage: Image.asset("assets/images/after.jpg"),
      ),
    );
  }
}
