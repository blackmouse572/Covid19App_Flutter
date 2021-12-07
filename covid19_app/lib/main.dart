import 'package:covid19_app/screens/submit_form.dart';
import 'package:covid19_app/screens/travel_history.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:covid19_app/constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  bool _initialized = false;
  bool _error = false;

  final List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Syringe'),
    // const HomePage(), //Kết nối với file home_page
    // Vaccination(), //Kết nối với file vaccination
    const TravelHistory(), //Kết nối với file travel_history
    const SubmitForm(), //Kết nối với file submit_form
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_error) {
      return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Text(
          'Error to load!',
        ))),
      );
    }
    if (!_initialized) {
      return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Text(
          'Loading...',
        ))),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'COVID-19 TRACKER',
            style: kTextTitle,
          ),
          backgroundColor: kColorBackGround,
          actions: const <Widget>[
            IconButton(onPressed: null, icon: Icon(Icons.person))
          ],
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
          selectedItemColor: kColorPrimaryColor,
          onTap: _onItemTap,
        ),
      ),
    );
  }
}
