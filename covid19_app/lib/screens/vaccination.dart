import 'package:flutter/material.dart';
import 'package:covid19_app/models/generatedvaccinedshot0widget/GeneratedVaccinedshot0Widget.dart';
import 'package:covid19_app/models/generatedvaccinedshot1widget/GeneratedVaccinedshot1Widget.dart';
import 'package:covid19_app/models/generatedvaccinedshot2widget/GeneratedVaccinedshot2Widget.dart';


void main() => runApp(Vaccination());

class Vaccination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedVaccinedshot0Widget',
      routes: {
        '/GeneratedVaccinedshot0Widget': (context) =>
            GeneratedVaccinedshot0Widget(),
        '/GeneratedVaccinedshot1Widget': (context) =>
            GeneratedVaccinedshot1Widget(),
        '/GeneratedVaccinedshot2Widget': (context) =>
            GeneratedVaccinedshot2Widget(),
      },
    );
  }
}