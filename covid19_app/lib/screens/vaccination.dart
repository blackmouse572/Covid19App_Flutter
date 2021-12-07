import 'package:covid19_app/models/vaccination_models/vaccination0.dart';
import 'package:covid19_app/models/vaccination_models/vaccination1.dart';
import 'package:covid19_app/models/vaccination_models/vaccination2.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Vaccination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VACCINE CERTIFICATE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/vaccination0',
      routes: {
        '/vaccination0': (context) =>
            const vaccination0(),
        '/vaccination1': (context) =>
            const vaccination1(),
        '/vaccination2': (context) =>
            const vaccination2(),
      },
    );
  }
}
