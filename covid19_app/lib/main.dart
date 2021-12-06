import 'package:covid19_app/screens/home_page.dart';
import 'package:covid19_app/screens/submit_form.dart';
import 'package:covid19_app/screens/travel_history.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text('Syringe'),
    TravelHistory(),
    SubmitForm(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('COVID-19 TRACKER'),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.create),
              title: Text('Vaccine Check'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('Travel History'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.format_align_justify),
              title: Text('Declaration'),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
      ),
    );
  }
}
