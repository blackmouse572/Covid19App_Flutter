import 'package:flutter/material.dart';

class TravelHistory extends StatefulWidget {
  const TravelHistory({Key? key}) : super(key: key);

  @override
  _TravelHistoryState createState() => _TravelHistoryState();
}

class _TravelHistoryState extends State<TravelHistory> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Text('Home'),
      ),
    );
  }
}
