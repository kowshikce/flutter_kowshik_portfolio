import 'package:flutter/material.dart';
import '../widgets/SimpleSeriesLegend.dart';

class ClientScreen extends StatefulWidget {
  @override
  _ClientScreenState createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18))),
      child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: ListView(
            children: [
              SizedBox(
                height: 5,
              ),
              Divider(),
              Text(
                "Work Skills",
                style: const TextStyle(
                    fontSize: 35.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              Container(
                  height: 200,
                  width: double.infinity,
                  child: SimpleSeriesLegend.withSampleData()),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 200,
                  width: double.infinity,
                  child: SimpleSeriesLegend.withSampleData()),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 200,
                  width: double.infinity,
                  child: SimpleSeriesLegend.withSampleData()),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 200,
                  width: double.infinity,
                  child: SimpleSeriesLegend.withSampleData()),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 200,
                  width: double.infinity,
                  child: SimpleSeriesLegend.withSampleData()),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 200,
                  width: double.infinity,
                  child: SimpleSeriesLegend.withSampleData()),
              SizedBox(
                height: 20,
              ),
            ],
          )),
    );
  }
}
